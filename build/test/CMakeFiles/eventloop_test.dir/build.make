# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lqf/cpp/Itachi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lqf/cpp/Itachi/build

# Include any dependencies generated for this target.
include test/CMakeFiles/eventloop_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/eventloop_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/eventloop_test.dir/flags.make

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o: test/CMakeFiles/eventloop_test.dir/flags.make
test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o: ../test/eventloop_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lqf/cpp/Itachi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o"
	cd /home/lqf/cpp/Itachi/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o -c /home/lqf/cpp/Itachi/test/eventloop_test.cpp

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eventloop_test.dir/eventloop_test.cpp.i"
	cd /home/lqf/cpp/Itachi/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lqf/cpp/Itachi/test/eventloop_test.cpp > CMakeFiles/eventloop_test.dir/eventloop_test.cpp.i

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eventloop_test.dir/eventloop_test.cpp.s"
	cd /home/lqf/cpp/Itachi/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lqf/cpp/Itachi/test/eventloop_test.cpp -o CMakeFiles/eventloop_test.dir/eventloop_test.cpp.s

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.requires:

.PHONY : test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.requires

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.provides: test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/eventloop_test.dir/build.make test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.provides.build
.PHONY : test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.provides

test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.provides.build: test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o


# Object files for target eventloop_test
eventloop_test_OBJECTS = \
"CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o"

# External object files for target eventloop_test
eventloop_test_EXTERNAL_OBJECTS =

../bin/eventloop_test: test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o
../bin/eventloop_test: test/CMakeFiles/eventloop_test.dir/build.make
../bin/eventloop_test: ../lib/libITACHI_BASE.so
../bin/eventloop_test: ../lib/libITACHI_NET.so
../bin/eventloop_test: test/CMakeFiles/eventloop_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lqf/cpp/Itachi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/eventloop_test"
	cd /home/lqf/cpp/Itachi/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eventloop_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/eventloop_test.dir/build: ../bin/eventloop_test

.PHONY : test/CMakeFiles/eventloop_test.dir/build

test/CMakeFiles/eventloop_test.dir/requires: test/CMakeFiles/eventloop_test.dir/eventloop_test.cpp.o.requires

.PHONY : test/CMakeFiles/eventloop_test.dir/requires

test/CMakeFiles/eventloop_test.dir/clean:
	cd /home/lqf/cpp/Itachi/build/test && $(CMAKE_COMMAND) -P CMakeFiles/eventloop_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/eventloop_test.dir/clean

test/CMakeFiles/eventloop_test.dir/depend:
	cd /home/lqf/cpp/Itachi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lqf/cpp/Itachi /home/lqf/cpp/Itachi/test /home/lqf/cpp/Itachi/build /home/lqf/cpp/Itachi/build/test /home/lqf/cpp/Itachi/build/test/CMakeFiles/eventloop_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/eventloop_test.dir/depend
