# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "/Users/ph/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.18/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/ph/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.18/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/lab3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab3.dir/flags.make

CMakeFiles/lab3.dir/fib2.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/fib2.c.o: ../fib2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab3.dir/fib2.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/fib2.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fib2.c"

CMakeFiles/lab3.dir/fib2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/fib2.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fib2.c" > CMakeFiles/lab3.dir/fib2.c.i

CMakeFiles/lab3.dir/fib2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/fib2.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fib2.c" -o CMakeFiles/lab3.dir/fib2.c.s

CMakeFiles/lab3.dir/fibonacci.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/fibonacci.c.o: ../fibonacci.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab3.dir/fibonacci.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/fibonacci.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fibonacci.c"

CMakeFiles/lab3.dir/fibonacci.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/fibonacci.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fibonacci.c" > CMakeFiles/lab3.dir/fibonacci.c.i

CMakeFiles/lab3.dir/fibonacci.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/fibonacci.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/fibonacci.c" -o CMakeFiles/lab3.dir/fibonacci.c.s

CMakeFiles/lab3.dir/split_array.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/split_array.c.o: ../split_array.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lab3.dir/split_array.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/split_array.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/split_array.c"

CMakeFiles/lab3.dir/split_array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/split_array.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/split_array.c" > CMakeFiles/lab3.dir/split_array.c.i

CMakeFiles/lab3.dir/split_array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/split_array.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/split_array.c" -o CMakeFiles/lab3.dir/split_array.c.s

# Object files for target lab3
lab3_OBJECTS = \
"CMakeFiles/lab3.dir/fib2.c.o" \
"CMakeFiles/lab3.dir/fibonacci.c.o" \
"CMakeFiles/lab3.dir/split_array.c.o"

# External object files for target lab3
lab3_EXTERNAL_OBJECTS =

lab3: CMakeFiles/lab3.dir/fib2.c.o
lab3: CMakeFiles/lab3.dir/fibonacci.c.o
lab3: CMakeFiles/lab3.dir/split_array.c.o
lab3: CMakeFiles/lab3.dir/build.make
lab3: CMakeFiles/lab3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lab3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab3.dir/build: lab3

.PHONY : CMakeFiles/lab3.dir/build

CMakeFiles/lab3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab3.dir/clean

CMakeFiles/lab3.dir/depend:
	cd "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/lab3/cmake-build-debug/CMakeFiles/lab3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/lab3.dir/depend

