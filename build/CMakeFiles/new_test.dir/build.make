# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shane/CXXVS/CXXVS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shane/CXXVS/CXXVS/build

# Include any dependencies generated for this target.
include CMakeFiles/new_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/new_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/new_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/new_test.dir/flags.make

CMakeFiles/new_test.dir/test/new_test.cpp.o: CMakeFiles/new_test.dir/flags.make
CMakeFiles/new_test.dir/test/new_test.cpp.o: ../test/new_test.cpp
CMakeFiles/new_test.dir/test/new_test.cpp.o: CMakeFiles/new_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shane/CXXVS/CXXVS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/new_test.dir/test/new_test.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/new_test.dir/test/new_test.cpp.o -MF CMakeFiles/new_test.dir/test/new_test.cpp.o.d -o CMakeFiles/new_test.dir/test/new_test.cpp.o -c /home/shane/CXXVS/CXXVS/test/new_test.cpp

CMakeFiles/new_test.dir/test/new_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/new_test.dir/test/new_test.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shane/CXXVS/CXXVS/test/new_test.cpp > CMakeFiles/new_test.dir/test/new_test.cpp.i

CMakeFiles/new_test.dir/test/new_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/new_test.dir/test/new_test.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shane/CXXVS/CXXVS/test/new_test.cpp -o CMakeFiles/new_test.dir/test/new_test.cpp.s

# Object files for target new_test
new_test_OBJECTS = \
"CMakeFiles/new_test.dir/test/new_test.cpp.o"

# External object files for target new_test
new_test_EXTERNAL_OBJECTS =

bin/new_test: CMakeFiles/new_test.dir/test/new_test.cpp.o
bin/new_test: CMakeFiles/new_test.dir/build.make
bin/new_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.74.0
bin/new_test: libsrc_lib.a
bin/new_test: CMakeFiles/new_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shane/CXXVS/CXXVS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/new_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/new_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/new_test.dir/build: bin/new_test
.PHONY : CMakeFiles/new_test.dir/build

CMakeFiles/new_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/new_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/new_test.dir/clean

CMakeFiles/new_test.dir/depend:
	cd /home/shane/CXXVS/CXXVS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shane/CXXVS/CXXVS /home/shane/CXXVS/CXXVS /home/shane/CXXVS/CXXVS/build /home/shane/CXXVS/CXXVS/build /home/shane/CXXVS/CXXVS/build/CMakeFiles/new_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/new_test.dir/depend

