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
CMAKE_COMMAND = /home/vmachado/Documents/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/vmachado/Documents/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vmachado/CLionProjects/nncpp_exec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/nncpp_exec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nncpp_exec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nncpp_exec.dir/flags.make

CMakeFiles/nncpp_exec.dir/main.cpp.o: CMakeFiles/nncpp_exec.dir/flags.make
CMakeFiles/nncpp_exec.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nncpp_exec.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nncpp_exec.dir/main.cpp.o -c /home/vmachado/CLionProjects/nncpp_exec/main.cpp

CMakeFiles/nncpp_exec.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nncpp_exec.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vmachado/CLionProjects/nncpp_exec/main.cpp > CMakeFiles/nncpp_exec.dir/main.cpp.i

CMakeFiles/nncpp_exec.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nncpp_exec.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vmachado/CLionProjects/nncpp_exec/main.cpp -o CMakeFiles/nncpp_exec.dir/main.cpp.s

CMakeFiles/nncpp_exec.dir/Matrix.cpp.o: CMakeFiles/nncpp_exec.dir/flags.make
CMakeFiles/nncpp_exec.dir/Matrix.cpp.o: ../Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nncpp_exec.dir/Matrix.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nncpp_exec.dir/Matrix.cpp.o -c /home/vmachado/CLionProjects/nncpp_exec/Matrix.cpp

CMakeFiles/nncpp_exec.dir/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nncpp_exec.dir/Matrix.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vmachado/CLionProjects/nncpp_exec/Matrix.cpp > CMakeFiles/nncpp_exec.dir/Matrix.cpp.i

CMakeFiles/nncpp_exec.dir/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nncpp_exec.dir/Matrix.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vmachado/CLionProjects/nncpp_exec/Matrix.cpp -o CMakeFiles/nncpp_exec.dir/Matrix.cpp.s

CMakeFiles/nncpp_exec.dir/Layer.cpp.o: CMakeFiles/nncpp_exec.dir/flags.make
CMakeFiles/nncpp_exec.dir/Layer.cpp.o: ../Layer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/nncpp_exec.dir/Layer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nncpp_exec.dir/Layer.cpp.o -c /home/vmachado/CLionProjects/nncpp_exec/Layer.cpp

CMakeFiles/nncpp_exec.dir/Layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nncpp_exec.dir/Layer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vmachado/CLionProjects/nncpp_exec/Layer.cpp > CMakeFiles/nncpp_exec.dir/Layer.cpp.i

CMakeFiles/nncpp_exec.dir/Layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nncpp_exec.dir/Layer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vmachado/CLionProjects/nncpp_exec/Layer.cpp -o CMakeFiles/nncpp_exec.dir/Layer.cpp.s

CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o: CMakeFiles/nncpp_exec.dir/flags.make
CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o: ../NeuralNet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o -c /home/vmachado/CLionProjects/nncpp_exec/NeuralNet.cpp

CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vmachado/CLionProjects/nncpp_exec/NeuralNet.cpp > CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.i

CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vmachado/CLionProjects/nncpp_exec/NeuralNet.cpp -o CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.s

CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o: CMakeFiles/nncpp_exec.dir/flags.make
CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o: ../DataSetOrganizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o -c /home/vmachado/CLionProjects/nncpp_exec/DataSetOrganizer.cpp

CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vmachado/CLionProjects/nncpp_exec/DataSetOrganizer.cpp > CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.i

CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vmachado/CLionProjects/nncpp_exec/DataSetOrganizer.cpp -o CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.s

# Object files for target nncpp_exec
nncpp_exec_OBJECTS = \
"CMakeFiles/nncpp_exec.dir/main.cpp.o" \
"CMakeFiles/nncpp_exec.dir/Matrix.cpp.o" \
"CMakeFiles/nncpp_exec.dir/Layer.cpp.o" \
"CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o" \
"CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o"

# External object files for target nncpp_exec
nncpp_exec_EXTERNAL_OBJECTS =

nncpp_exec: CMakeFiles/nncpp_exec.dir/main.cpp.o
nncpp_exec: CMakeFiles/nncpp_exec.dir/Matrix.cpp.o
nncpp_exec: CMakeFiles/nncpp_exec.dir/Layer.cpp.o
nncpp_exec: CMakeFiles/nncpp_exec.dir/NeuralNet.cpp.o
nncpp_exec: CMakeFiles/nncpp_exec.dir/DataSetOrganizer.cpp.o
nncpp_exec: CMakeFiles/nncpp_exec.dir/build.make
nncpp_exec: CMakeFiles/nncpp_exec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable nncpp_exec"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nncpp_exec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nncpp_exec.dir/build: nncpp_exec

.PHONY : CMakeFiles/nncpp_exec.dir/build

CMakeFiles/nncpp_exec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nncpp_exec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nncpp_exec.dir/clean

CMakeFiles/nncpp_exec.dir/depend:
	cd /home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vmachado/CLionProjects/nncpp_exec /home/vmachado/CLionProjects/nncpp_exec /home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug /home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug /home/vmachado/CLionProjects/nncpp_exec/cmake-build-debug/CMakeFiles/nncpp_exec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nncpp_exec.dir/depend

