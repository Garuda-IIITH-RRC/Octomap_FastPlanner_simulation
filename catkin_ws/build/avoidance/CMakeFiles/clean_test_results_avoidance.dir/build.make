# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rishabh/catkin_ws/src/avoidance/avoidance

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rishabh/catkin_ws/build/avoidance

# Utility rule file for clean_test_results_avoidance.

# Include the progress variables for this target.
include CMakeFiles/clean_test_results_avoidance.dir/progress.make

CMakeFiles/clean_test_results_avoidance:
	/usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/rishabh/catkin_ws/build/avoidance/test_results/avoidance

clean_test_results_avoidance: CMakeFiles/clean_test_results_avoidance
clean_test_results_avoidance: CMakeFiles/clean_test_results_avoidance.dir/build.make

.PHONY : clean_test_results_avoidance

# Rule to build all files generated by this target.
CMakeFiles/clean_test_results_avoidance.dir/build: clean_test_results_avoidance

.PHONY : CMakeFiles/clean_test_results_avoidance.dir/build

CMakeFiles/clean_test_results_avoidance.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_avoidance.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clean_test_results_avoidance.dir/clean

CMakeFiles/clean_test_results_avoidance.dir/depend:
	cd /home/rishabh/catkin_ws/build/avoidance && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rishabh/catkin_ws/src/avoidance/avoidance /home/rishabh/catkin_ws/src/avoidance/avoidance /home/rishabh/catkin_ws/build/avoidance /home/rishabh/catkin_ws/build/avoidance /home/rishabh/catkin_ws/build/avoidance/CMakeFiles/clean_test_results_avoidance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clean_test_results_avoidance.dir/depend
