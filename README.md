# FastPlanner using Octomap 

## Catkin Folder Structure
All folder(workspaces) are in /home directory
1. PX4-Autopilot\
  Contains PX4-Gazebo-SITL
  
2. catkin_ws\
  Contains mavros
  
3. fastplanner_ws\
  Contains mapping, planning and controller


## How To Run Simulation

### Terminal 1:-
```bash
cd PX4-Autopilot/
source ~/catkin_ws/devel/setup.bash
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

roslaunch px4 mavros_posix_sitl.launch
```

In same terminal type
```bash
commander takeoff
```

It will launch Gazebo, World, Mavros, PX4, Quadcopter(iris_depth_camera).\
You can choose world from PX4-Autopilot/Tools/sitl_gazebo/worlds\
Choose quadcopter from PX4-Autopilot/Tools/sitl_gazebo/models\
Make changes into mavros_posix_sitl.launch\

### Terminal 2:-
```bash
cd fastplanner_ws/
source devel/setup.bash
roslaunch FastPlannerOctomap MappingSim.launch
```
Give goal location using 2D Nav Goal option in rviz

### Terminal 3:-
```bash
cd fastplanner_ws/
source devel/setup.bash
rosrun FastPlannerOctomap Planner
```
For the startOver option select either 1 or 0.\
Also give the height (in metres) of the goal location when prompted.\

### Terminal 4:-
```bash
cd fastplanner_ws/
source devel/setup.bash
rosrun FastPlannerOctomap Controller
```


![Alt text](https://github.com/deepak-1530/FastPlannerOctomap/blob/main/FastPlanner_OctomapAvoidance.gif)
![Alt text](https://github.com/deepak-1530/FastPlannerOctomap/blob/main/GardenAvoidance.gif)

Reference:- https://github.com/deepak-1530/FastPlannerOctomap
