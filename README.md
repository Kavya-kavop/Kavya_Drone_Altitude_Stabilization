# Kavya_Drone_Altitude_Stabilization
 Overview
This project designs a Drone Altitude Stabilization System using a PID Controller.
The controller adjusts the drone thrust to maintain stable altitude even during disturbance such as wind.

 Objective
- Maintain stable altitude
- Reduce settling time
- Minimize overshoot
- Improve system stability

 Software Used
- MATLAB
- Simulink

 Working Principle
The PID controller continuously checks the altitude error and adjusts the drone thrust.  
The proportional term reacts to present error, integral term removes steady-state error, and derivative term predicts future error for stable altitude control.

 Transfer Function
Plant Model:
G(s) = 1 / (s^2 + 2s + 5)

 PID Parameters
Kp = 25  
Ki = 20  
Kd = 7

 Output
The simulation shows improved settling time and stable altitude response using PID control.
