# Minimum CMake version
cmake_minimum_required(VERSION 3.10)

# Project name
project(CXXVS)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "-g")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Include directories for headers
include_directories(${CMAKE_SOURCE_DIR}/src)

#Subdirectories
add_subdirectory(libraries)
add_subdirectory(src)


# Add Boost libraries (optional: if using Boost for testing later)
find_package(Boost REQUIRED COMPONENTS unit_test_framework)
if (Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
endif()

# Enable testing
enable_testing()

# Create a library for all source files in the `src` directory
file(GLOB_RECURSE SRC_SOURCES src/*.cpp src/*.h)
add_library(src_lib ${SRC_SOURCES})
target_include_directories(src_lib PUBLIC ${CMAKE_SOURCE_DIR}/src)

# Set the source directory for tests
file(GLOB TEST_SOURCES test/*.cpp)

# Loop through each test source file and create a test executable
foreach(TEST_FILE ${TEST_SOURCES})
    # Get the filename without the directory and extension
    get_filename_component(TEST_NAME ${TEST_FILE} NAME_WE)

    # Add an executable for the test
    add_executable(${TEST_NAME} ${TEST_FILE})

    # Link Boost Unit Test Framework
    target_link_libraries(${TEST_NAME} PRIVATE Boost::unit_test_framework)

    # Link the src library (which includes all files in src/)
    target_link_libraries(${TEST_NAME} PRIVATE src_lib)

    set_target_properties(${TEST_NAME} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

    # Register the test with CTest
    add_test(NAME ${TEST_NAME} COMMAND ${TEST_NAME})
endforeach()



# Custom target to generate docs and UML after build
add_custom_target(run_post_build
    COMMAND ${CMAKE_COMMAND} -E echo "Running post-build tasks..."
    COMMAND make -C ${CMAKE_SOURCE_DIR} all
    COMMENT "Running 'make all' to generate docs and UML"
)

# Ensure the post-build task runs after building the executable
add_dependencies(main run_post_build)