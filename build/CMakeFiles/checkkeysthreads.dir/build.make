# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:/SPO/SDL2/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:/SPO/build

# Include any dependencies generated for this target.
include CMakeFiles/checkkeysthreads.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/checkkeysthreads.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/checkkeysthreads.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/checkkeysthreads.dir/flags.make

CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj: CMakeFiles/checkkeysthreads.dir/flags.make
CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj: F:/SPO/SDL2/test/checkkeysthreads.c
CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj: CMakeFiles/checkkeysthreads.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj -MF CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj.d -o CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj -c F:/SPO/SDL2/test/checkkeysthreads.c

CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/checkkeysthreads.c > CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.i

CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/checkkeysthreads.c -o CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.s

# Object files for target checkkeysthreads
checkkeysthreads_OBJECTS = \
"CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj"

# External object files for target checkkeysthreads
checkkeysthreads_EXTERNAL_OBJECTS =

checkkeysthreads.exe: CMakeFiles/checkkeysthreads.dir/checkkeysthreads.c.obj
checkkeysthreads.exe: CMakeFiles/checkkeysthreads.dir/build.make
checkkeysthreads.exe: CMakeFiles/checkkeysthreads.dir/linkLibs.rsp
checkkeysthreads.exe: CMakeFiles/checkkeysthreads.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable checkkeysthreads.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/checkkeysthreads.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/checkkeysthreads.dir/objects.a @CMakeFiles/checkkeysthreads.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/checkkeysthreads.dir/objects.a -Wl,--no-whole-archive -o checkkeysthreads.exe -Wl,--out-implib,libcheckkeysthreads.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/checkkeysthreads.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/checkkeysthreads.dir/build: checkkeysthreads.exe
.PHONY : CMakeFiles/checkkeysthreads.dir/build

CMakeFiles/checkkeysthreads.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/checkkeysthreads.dir/cmake_clean.cmake
.PHONY : CMakeFiles/checkkeysthreads.dir/clean

CMakeFiles/checkkeysthreads.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/checkkeysthreads.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/checkkeysthreads.dir/depend
