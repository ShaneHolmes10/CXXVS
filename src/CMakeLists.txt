# Add all source files under src/
file(GLOB_RECURSE SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/*.h")

# Create executable named 'main'
add_executable(main ${SOURCES})

# Include the libraries directory if needed
target_include_directories(main PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../libraries)

# Link all libraries in the libraries directory
file(GLOB LIBRARY_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/../libraries/*.cpp")
foreach(LIBRARY_SRC ${LIBRARY_SOURCES})
    get_filename_component(LIB_NAME ${LIBRARY_SRC} NAME_WE)
    target_link_libraries(main ${LIB_NAME})
endforeach()


# Find X11 package
find_package(X11 REQUIRED)
# Include X11 headers
target_include_directories(main PUBLIC ${X11_INCLUDE_DIR})
# Link X11 libraries
target_link_libraries(main ${X11_LIBRARIES})

# Set the runtime output directory for the main executable
set_target_properties(main PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)