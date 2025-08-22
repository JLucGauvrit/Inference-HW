cmake_minimum_required(VERSION 3.20)
project(inference_fpga LANGUAGES CXX)

option(ENABLE_FPGA "Build FPGA kernels and xclbin" OFF)

# ---------- hôte C++ ----------
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS  OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
add_compile_options(-Wall -Wextra)
add_compile_definitions(USE_CPU_ONLY)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS src/*.cpp)
add_executable(inference_fpga ${SOURCES})
target_include_directories(inference_fpga PRIVATE src)

# ---------- FPGA ---------------
# ---------- Bloc FPGA -------------------------------------------------------
if(ENABLE_FPGA)

    # a) Trouver v++ / x++
    find_program(VPP_EXECUTABLE NAMES v++ x++ HINTS $ENV{XILINX_VITIS}/bin)
    if(NOT VPP_EXECUTABLE)
        message(FATAL_ERROR "v++/x++ introuvable – lancez  source <Vitis>/settings64.sh")
    endif()

    # b) Headers HLS
    find_path(HLS_INCLUDE_DIR NAMES hls_stream.h
              PATHS $ENV{XILINX_VITIS}/include $ENV{XILINX_VITIS}/HLS/include)
    if(NOT HLS_INCLUDE_DIR)
        message(FATAL_ERROR "hls_stream.h introuvable – passez  -DHLS_INCLUDE_DIR=…")
    endif()
    target_include_directories(inference_fpga PRIVATE ${HLS_INCLUDE_DIR})

    # c) Plate-forme .xpfm
    if(NOT XPLATFORM)
        message(FATAL_ERROR "Spécifiez la plate-forme :  -DXPLATFORM=<nom>.xpfm")
    endif()

    # d) Liste *absolue* des fichiers kernel
    set(KERNEL_SRC
        ${CMAKE_SOURCE_DIR}/src/kernel_add.cpp
        ${CMAKE_SOURCE_DIR}/src/kernel_matmul.cpp
        ${CMAKE_SOURCE_DIR}/src/kernel_mul.cpp
        ${CMAKE_SOURCE_DIR}/src/kernel_rmsnorm.cpp
        ${CMAKE_SOURCE_DIR}/src/kernel_rope.cpp
        ${CMAKE_SOURCE_DIR}/src/kernel_softmax.cpp)

    # e) Compilation HLS (.xo)
    set(XO_FILES)
    foreach(src_abs ${KERNEL_SRC})
        get_filename_component(kernel ${src_abs} NAME_WE)       # kernel_add
        set(xo ${CMAKE_BINARY_DIR}/${kernel}.xo)

        add_custom_command(OUTPUT ${xo}
            COMMAND ${VPP_EXECUTABLE} -c -t hw
                    -k ${kernel} ${src_abs}
                    --platform ${XPLATFORM}
                    -I${HLS_INCLUDE_DIR}
                    -o ${xo}
            DEPENDS ${src_abs}
            COMMENT "Compiling kernel ${kernel} → ${xo}"
            VERBATIM)
        list(APPEND XO_FILES ${xo})
    endforeach()
    add_custom_target(fpga_kernels ALL DEPENDS ${XO_FILES})

    # f) Linkage en .xclbin
    set(XCLBIN ${CMAKE_BINARY_DIR}/inference_fpga.xclbin)
    add_custom_command(OUTPUT ${XCLBIN}
        COMMAND ${VPP_EXECUTABLE} -l -t hw
                --platform ${XPLATFORM}
                -o ${XCLBIN}
                ${XO_FILES}
        DEPENDS ${XO_FILES}
        COMMENT "Linking kernels → ${XCLBIN}"
        VERBATIM)
    add_custom_target(fpga_bitstream ALL DEPENDS ${XCLBIN})

    # g) Copier le .xclbin à côté de l’exécutable hôte
    add_custom_command(TARGET inference_fpga POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
                ${XCLBIN} $<TARGET_FILE_DIR:inference_fpga>)
endif()

