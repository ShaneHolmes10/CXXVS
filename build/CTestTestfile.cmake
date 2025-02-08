# CMake generated Testfile for 
# Source directory: /home/shane/CXXVS/CXXVS
# Build directory: /home/shane/CXXVS/CXXVS/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Jerry_test "/home/shane/CXXVS/CXXVS/build/bin/Jerry_test")
set_tests_properties(Jerry_test PROPERTIES  _BACKTRACE_TRIPLES "/home/shane/CXXVS/CXXVS/CMakeLists.txt;59;add_test;/home/shane/CXXVS/CXXVS/CMakeLists.txt;0;")
add_test(example "/home/shane/CXXVS/CXXVS/build/bin/example")
set_tests_properties(example PROPERTIES  _BACKTRACE_TRIPLES "/home/shane/CXXVS/CXXVS/CMakeLists.txt;59;add_test;/home/shane/CXXVS/CXXVS/CMakeLists.txt;0;")
add_test(new_test "/home/shane/CXXVS/CXXVS/build/bin/new_test")
set_tests_properties(new_test PROPERTIES  _BACKTRACE_TRIPLES "/home/shane/CXXVS/CXXVS/CMakeLists.txt;59;add_test;/home/shane/CXXVS/CXXVS/CMakeLists.txt;0;")
subdirs("libraries")
subdirs("src")
