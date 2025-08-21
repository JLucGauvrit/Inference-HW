cmake_minimum_required(VERSION 3.18)
project(InferenceFPGA VERSION 1.0.0 LANGUAGES CXX)

# Configuration pour FPGA
option(FPGA_BUILD "Enable FPGA build" ON)

# Paramètres de compilation
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Si on compile pour FPGA avec cross-compilation
if(FPGA_BUILD)
    message(STATUS "🔧 Configuring for FPGA build (aarch64)")
    
    # Paramètres spécifiques FPGA
    add_definitions(-DFPGA_ACCELERATION)
    add_definitions(-DAARCH64_TARGET)
    
    # Optimisations pour ARM
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -mtune=cortex-a53")
endif()

# Recherche des sources
file(GLOB_RECURSE SOURCES 
    "${CMAKE_CURRENT_BINARY_DIR}/*.cpp"
    "${CMAKE_CURRENT_BINARY_DIR}/*.c"
)

# Si pas de sources dans build-src, utiliser les sources par défaut
if(NOT SOURCES)
    file(GLOB_RECURSE SOURCES 
        "${CMAKE_CURRENT_SOURCE_DIR}/default-src/*.cpp"
        "${CMAKE_CURRENT_SOURCE_DIR}/default-src/*.c"
    )
endif()

# Inclure les headers
include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# Recherche des kernels FPGA
file(GLOB_RECURSE KERNEL_SOURCES 
    "${CMAKE_CURRENT_BINARY_DIR}/kernels/*.cpp"
    "${CMAKE_CURRENT_BINARY_DIR}/hls/*.cpp"
)

if(SOURCES)
    # Exécutable principal
    add_executable(inference_fpga ${SOURCES})
    
    # Liens avec les bibliothèques nécessaires
    target_link_libraries(inference_fpga 
        pthread
        dl
    )
    
    # Si on a des kernels FPGA
    if(KERNEL_SOURCES)
        message(STATUS "🔌 Found FPGA kernel sources")
        
        # Bibliothèque pour les kernels
        add_library(fpga_kernels SHARED ${KERNEL_SOURCES})
        target_link_libraries(inference_fpga fpga_kernels)
        
        # Kernels individuels
        foreach(KERNEL_FILE ${KERNEL_SOURCES})
            get_filename_component(KERNEL_NAME ${KERNEL_FILE} NAME_WE)
            message(STATUS "🧩 Processing kernel: ${KERNEL_NAME}")
        endforeach()
    endif()
    
    # Installation
    install(TARGETS inference_fpga 
        RUNTIME DESTINATION bin
    )
    
    if(TARGET fpga_kernels)
        install(TARGETS fpga_kernels 
            LIBRARY DESTINATION lib
        )
    endif()
    
else()
    message(WARNING "⚠️  No source files found, creating placeholder")
    
    # Créer un fichier source minimal
    file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/placeholder.cpp 
        "#include <iostream>\n"
        "int main() {\n"
        "    std::cout << \"FPGA inference placeholder built successfully!\" << std::endl;\n"
        "    return 0;\n"
        "}\n"
    )
    
    add_executable(inference_fpga ${CMAKE_CURRENT_BINARY_DIR}/placeholder.cpp)
endif()

# Informations de build
message(STATUS "🏗️  Build configuration:")
message(STATUS "   - Project: ${PROJECT_NAME}")
message(STATUS "   - Version: ${PROJECT_VERSION}")
message(STATUS "   - FPGA Build: ${FPGA_BUILD}")
message(STATUS "   - Compiler: ${CMAKE_CXX_COMPILER}")
message(STATUS "   - Build Type: ${CMAKE_BUILD_TYPE}")
message(STATUS "   - Source files found: ${SOURCES}")
message(STATUS "   - Kernel files found: ${KERNEL_SOURCES}")
