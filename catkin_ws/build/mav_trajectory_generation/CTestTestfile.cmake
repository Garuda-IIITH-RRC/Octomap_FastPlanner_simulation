# CMake generated Testfile for 
# Source directory: /home/rishabh/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation
# Build directory: /home/rishabh/catkin_ws/build/mav_trajectory_generation
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mav_trajectory_generation_gtest_test_polynomial "/home/rishabh/catkin_ws/build/mav_trajectory_generation/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/rishabh/catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial.xml" "--return-code" "/home/rishabh/catkin_ws/devel/.private/mav_trajectory_generation/lib/mav_trajectory_generation/test_polynomial --gtest_output=xml:/home/rishabh/catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial.xml")
add_test(_ctest_mav_trajectory_generation_gtest_test_polynomial_optimization "/home/rishabh/catkin_ws/build/mav_trajectory_generation/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/rishabh/catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial_optimization.xml" "--return-code" "/home/rishabh/catkin_ws/devel/.private/mav_trajectory_generation/lib/mav_trajectory_generation/test_polynomial_optimization --gtest_output=xml:/home/rishabh/catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial_optimization.xml")
subdirs("gtest")
