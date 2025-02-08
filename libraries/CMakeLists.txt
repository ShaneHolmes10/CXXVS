# Eigen is a header-only library, so we just need to include the header path
foreach(LIBRARY_SRC ${LIBRARY_SOURCES})
    get_filename_component(LIB_NAME ${LIBRARY_SRC} NAME_WE)
    add_library(${LIB_NAME} STATIC ${LIBRARY_SRC})
    target_include_directories(${LIB_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
endforeach()

target_include_directories(src_lib PUBLIC ${CMAKE_SOURCE_DIR}/libraries/eigen)
