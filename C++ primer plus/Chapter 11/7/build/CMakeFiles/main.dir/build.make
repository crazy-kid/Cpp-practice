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
CMAKE_SOURCE_DIR = "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build"

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/complex.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/complex.cpp.o: /home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/src/complex.cpp
CMakeFiles/main.dir/complex.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/complex.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/complex.cpp.o -MF CMakeFiles/main.dir/complex.cpp.o.d -o CMakeFiles/main.dir/complex.cpp.o -c "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/complex.cpp"

CMakeFiles/main.dir/complex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/complex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/complex.cpp" > CMakeFiles/main.dir/complex.cpp.i

CMakeFiles/main.dir/complex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/complex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/complex.cpp" -o CMakeFiles/main.dir/complex.cpp.s

CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cpp.o: /home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/src/main.cpp
CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main.cpp.o -MF CMakeFiles/main.dir/main.cpp.o.d -o CMakeFiles/main.dir/main.cpp.o -c "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/main.cpp"

CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/main.cpp" > CMakeFiles/main.dir/main.cpp.i

CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src/main.cpp" -o CMakeFiles/main.dir/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/complex.cpp.o" \
"CMakeFiles/main.dir/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

/home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/bin/main: CMakeFiles/main.dir/complex.cpp.o
/home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/bin/main: CMakeFiles/main.dir/main.cpp.o
/home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/bin/main: CMakeFiles/main.dir/build.make
/home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/bin/main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable \"/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/bin/main\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: /home/rick/Documents/C++\ practice/C++\ primer\ plus/Chapter\ 11/7/bin/main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src" "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/src" "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build" "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build" "/home/rick/Documents/C++ practice/C++ primer plus/Chapter 11/7/build/CMakeFiles/main.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

