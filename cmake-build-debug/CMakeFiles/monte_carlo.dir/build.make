# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /mnt/s/Coding/monte-carlo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/s/Coding/monte-carlo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/monte_carlo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/monte_carlo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/monte_carlo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/monte_carlo.dir/flags.make

CMakeFiles/monte_carlo.dir/main.cpp.o: CMakeFiles/monte_carlo.dir/flags.make
CMakeFiles/monte_carlo.dir/main.cpp.o: /mnt/s/Coding/monte-carlo/main.cpp
CMakeFiles/monte_carlo.dir/main.cpp.o: CMakeFiles/monte_carlo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/s/Coding/monte-carlo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/monte_carlo.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/monte_carlo.dir/main.cpp.o -MF CMakeFiles/monte_carlo.dir/main.cpp.o.d -o CMakeFiles/monte_carlo.dir/main.cpp.o -c /mnt/s/Coding/monte-carlo/main.cpp

CMakeFiles/monte_carlo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/monte_carlo.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/s/Coding/monte-carlo/main.cpp > CMakeFiles/monte_carlo.dir/main.cpp.i

CMakeFiles/monte_carlo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/monte_carlo.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/s/Coding/monte-carlo/main.cpp -o CMakeFiles/monte_carlo.dir/main.cpp.s

# Object files for target monte_carlo
monte_carlo_OBJECTS = \
"CMakeFiles/monte_carlo.dir/main.cpp.o"

# External object files for target monte_carlo
monte_carlo_EXTERNAL_OBJECTS =

monte_carlo: CMakeFiles/monte_carlo.dir/main.cpp.o
monte_carlo: CMakeFiles/monte_carlo.dir/build.make
monte_carlo: /usr/lib64/libraylib.so
monte_carlo: CMakeFiles/monte_carlo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/s/Coding/monte-carlo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable monte_carlo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monte_carlo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/monte_carlo.dir/build: monte_carlo
.PHONY : CMakeFiles/monte_carlo.dir/build

CMakeFiles/monte_carlo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/monte_carlo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/monte_carlo.dir/clean

CMakeFiles/monte_carlo.dir/depend:
	cd /mnt/s/Coding/monte-carlo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/s/Coding/monte-carlo /mnt/s/Coding/monte-carlo /mnt/s/Coding/monte-carlo/cmake-build-debug /mnt/s/Coding/monte-carlo/cmake-build-debug /mnt/s/Coding/monte-carlo/cmake-build-debug/CMakeFiles/monte_carlo.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/monte_carlo.dir/depend
