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
include src/Net/CMakeFiles/ITACHI_NET.dir/depend.make

# Include the progress variables for this target.
include src/Net/CMakeFiles/ITACHI_NET.dir/progress.make

# Include the compile flags for this target's objects.
include src/Net/CMakeFiles/ITACHI_NET.dir/flags.make

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o: src/Net/CMakeFiles/ITACHI_NET.dir/flags.make
src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o: ../src/Net/src/buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lqf/cpp/Itachi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o -c /home/lqf/cpp/Itachi/src/Net/src/buffer.cpp

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.i"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lqf/cpp/Itachi/src/Net/src/buffer.cpp > CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.i

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.s"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lqf/cpp/Itachi/src/Net/src/buffer.cpp -o CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.s

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.requires:

.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.requires

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.provides: src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.requires
	$(MAKE) -f src/Net/CMakeFiles/ITACHI_NET.dir/build.make src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.provides.build
.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.provides

src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.provides.build: src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o


src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o: src/Net/CMakeFiles/ITACHI_NET.dir/flags.make
src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o: ../src/Net/src/socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lqf/cpp/Itachi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o -c /home/lqf/cpp/Itachi/src/Net/src/socket.cpp

src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITACHI_NET.dir/src/socket.cpp.i"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lqf/cpp/Itachi/src/Net/src/socket.cpp > CMakeFiles/ITACHI_NET.dir/src/socket.cpp.i

src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITACHI_NET.dir/src/socket.cpp.s"
	cd /home/lqf/cpp/Itachi/build/src/Net && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lqf/cpp/Itachi/src/Net/src/socket.cpp -o CMakeFiles/ITACHI_NET.dir/src/socket.cpp.s

src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.requires:

.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.requires

src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.provides: src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.requires
	$(MAKE) -f src/Net/CMakeFiles/ITACHI_NET.dir/build.make src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.provides.build
.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.provides

src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.provides.build: src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o


# Object files for target ITACHI_NET
ITACHI_NET_OBJECTS = \
"CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o" \
"CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o"

# External object files for target ITACHI_NET
ITACHI_NET_EXTERNAL_OBJECTS =

../lib/libITACHI_NET.so: src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o
../lib/libITACHI_NET.so: src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o
../lib/libITACHI_NET.so: src/Net/CMakeFiles/ITACHI_NET.dir/build.make
../lib/libITACHI_NET.so: src/Net/CMakeFiles/ITACHI_NET.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lqf/cpp/Itachi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../../lib/libITACHI_NET.so"
	cd /home/lqf/cpp/Itachi/build/src/Net && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITACHI_NET.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Net/CMakeFiles/ITACHI_NET.dir/build: ../lib/libITACHI_NET.so

.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/build

src/Net/CMakeFiles/ITACHI_NET.dir/requires: src/Net/CMakeFiles/ITACHI_NET.dir/src/buffer.cpp.o.requires
src/Net/CMakeFiles/ITACHI_NET.dir/requires: src/Net/CMakeFiles/ITACHI_NET.dir/src/socket.cpp.o.requires

.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/requires

src/Net/CMakeFiles/ITACHI_NET.dir/clean:
	cd /home/lqf/cpp/Itachi/build/src/Net && $(CMAKE_COMMAND) -P CMakeFiles/ITACHI_NET.dir/cmake_clean.cmake
.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/clean

src/Net/CMakeFiles/ITACHI_NET.dir/depend:
	cd /home/lqf/cpp/Itachi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lqf/cpp/Itachi /home/lqf/cpp/Itachi/src/Net /home/lqf/cpp/Itachi/build /home/lqf/cpp/Itachi/build/src/Net /home/lqf/cpp/Itachi/build/src/Net/CMakeFiles/ITACHI_NET.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Net/CMakeFiles/ITACHI_NET.dir/depend
