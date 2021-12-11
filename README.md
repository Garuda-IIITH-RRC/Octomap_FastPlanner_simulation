# Octomap_FastPlanner_simulation

  Terminal-1 : cd PX4-Autopilot && 
source ~/catkin_ws/devel/setup.bash   ###mavros location
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_
export ROS_PACKAGE_PATH=$ROS_PACKAGE_
roslaunch px4 m.3
avros_posix_sitl.launch
  Terminal-2 : cd catkin_ws && roslaunch FastPlannerOctomap MappingSim.launch (give goal location using 2D Nav Goal option)

  Terminal-3 : rosrun FastPlannerOctomap Planner
  (or noYawPlanner if you want to plan the trajectory keeping the heading or yaw of the drone fixed). For the startOver option select either 1 or 0. Refer to the source code (FastPlannerOctomap/src/

  Terminal-4 : rosrun FastPlannerOctomap Controller
  
