## How To Run

1. Terminal 1st:-
```bash
cd catkin_ws
roslaunch skid4wd_description sim_with_controller.launch
```
2. Terminal 2nd:-
```bash
cd catkin_ws/
source devel/setup.zsh
roscd skid4wd_control
cd scripts/V0_working
python3 MPC.py
```
3. Terminal 3rd:-
```bash
cd catkin_ws/
source devel/setup.zsh
roscd skid4wd_control
cd scripts/V0_working
python control.py
```

Note:-
For MPC optimization, "cvxpy" has been used which works only with python3, while ROS worls in python2 by default. So "Python Socket" has been used to communicate between MPC.py and control.py.

MPC.py receive current state [x,y,yaw,v,omega] and send new [v, omega].
