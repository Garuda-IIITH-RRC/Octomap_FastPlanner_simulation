# CMake generated Testfile for 
# Source directory: /home/rishabh/catkin_ws/src/avoidance/local_planner
# Build directory: /home/rishabh/catkin_ws/build/local_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_local_planner_gtest_local_planner-test "/home/rishabh/catkin_ws/build/local_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/rishabh/catkin_ws/build/local_planner/test_results/local_planner/gtest-local_planner-test.xml" "--return-code" "/home/rishabh/catkin_ws/devel/.private/local_planner/lib/local_planner/local_planner-test --gtest_output=xml:/home/rishabh/catkin_ws/build/local_planner/test_results/local_planner/gtest-local_planner-test.xml")
add_test(_ctest_local_planner_gtest_local_planner-test-roscore "/home/rishabh/catkin_ws/build/local_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/rishabh/catkin_ws/build/local_planner/test_results/local_planner/gtest-local_planner-test-roscore.xml" "--return-code" "/home/rishabh/catkin_ws/devel/.private/local_planner/lib/local_planner/local_planner-test-roscore --gtest_output=xml:/home/rishabh/catkin_ws/build/local_planner/test_results/local_planner/gtest-local_planner-test-roscore.xml")
subdirs("gtest")
