# FastPlanner using Octomap 

Download mavros, mavlink and Px4-Autopilot from their respective Github repo

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

It will launch Gazebo, World, Mavros, PX4, Quadcopter(iris_depth_camera)\
You can choose world from PX4-Autopilot/Tools/sitl_gazebo/worlds\
Choose quadcopter from PX4-Autopilot/Tools/sitl_gazebo/models\
Make changes into mavros_posix_sitl.launch

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
For the startOver option select either 1 or 0\
Also give the height (in metres) of the goal location when prompted.

### Terminal 4:-
```bash
cd fastplanner_ws/
source devel/setup.bash
rosrun FastPlannerOctomap Controller
```
### Simulation demo:-
<img src="https://github.com/Garuda-IIITH-RRC/Octomap_FastPlanner_simulation/blob/main/fast_sim.gif" width="1000" height="300">

### Youtube Link:-

[![](https://img.youtube.com/vi/xpzdZVvVE0Y/0.jpg)](https://www.youtube.com/watch?v=xpzdZVvVE0Y)

Reference:- https://github.com/deepak-1530/FastPlannerOctomap
