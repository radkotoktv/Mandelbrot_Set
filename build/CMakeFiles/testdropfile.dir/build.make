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
include CMakeFiles/testdropfile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testdropfile.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testdropfile.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testdropfile.dir/flags.make

CMakeFiles/testdropfile.dir/testdropfile.c.obj: CMakeFiles/testdropfile.dir/flags.make
CMakeFiles/testdropfile.dir/testdropfile.c.obj: F:/SPO/SDL2/test/testdropfile.c
CMakeFiles/testdropfile.dir/testdropfile.c.obj: CMakeFiles/testdropfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testdropfile.dir/testdropfile.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testdropfile.dir/testdropfile.c.obj -MF CMakeFiles/testdropfile.dir/testdropfile.c.obj.d -o CMakeFiles/testdropfile.dir/testdropfile.c.obj -c F:/SPO/SDL2/test/testdropfile.c

CMakeFiles/testdropfile.dir/testdropfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testdropfile.dir/testdropfile.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testdropfile.c > CMakeFiles/testdropfile.dir/testdropfile.c.i

CMakeFiles/testdropfile.dir/testdropfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testdropfile.dir/testdropfile.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testdropfile.c -o CMakeFiles/testdropfile.dir/testdropfile.c.s

# Object files for target testdropfile
testdropfile_OBJECTS = \
"CMakeFiles/testdropfile.dir/testdropfile.c.obj"

# External object files for target testdropfile
testdropfile_EXTERNAL_OBJECTS =

testdropfile.exe: CMakeFiles/testdropfile.dir/testdropfile.c.obj
testdropfile.exe: CMakeFiles/testdropfile.dir/build.make
testdropfile.exe: CMakeFiles/testdropfile.dir/linkLibs.rsp
testdropfile.exe: CMakeFiles/testdropfile.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testdropfile.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testdropfile.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testdropfile.dir/objects.a @CMakeFiles/testdropfile.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testdropfile.dir/objects.a -Wl,--no-whole-archive -o testdropfile.exe -Wl,--out-implib,libtestdropfile.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testdropfile.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testdropfile.dir/build: testdropfile.exe
.PHONY : CMakeFiles/testdropfile.dir/build

CMakeFiles/testdropfile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdropfile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdropfile.dir/clean

CMakeFiles/testdropfile.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testdropfile.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testdropfile.dir/depend

