cmake_minimum_required(VERSION 3.3)

SET (CMAKE_CXX_FLAGS "-Wall -Wextra -std=c++2a -mcmodel=large")
add_definitions(-DUSE_CPU_ONLY)

# Définir le répertoire de sortie
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY /build/out)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY /build/out)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY /build/out)

# S'assurer que le répertoire de sortie existe
file(MAKE_DIRECTORY /build/out)

file(GLOB_RECURSE SOURCES 
    build-src/*.cpp
    build-src/*.hpp
)

message("# SOURCES: ${SOURCES}")
message("# OUTPUT DIRECTORY: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

project(inference-CPU CXX)
add_executable(inference-CPU ${SOURCES})

# Installation vers le répertoire de sortie
install(TARGETS inference-CPU 
    RUNTIME DESTINATION /build/out
    LIBRARY DESTINATION /build/out  
    ARCHIVE DESTINATION /build/out
)
