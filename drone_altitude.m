clc;
clear all;
close all;

wn = sqrt(12);
zeta = 2/(2*wn);

kp = 25;
ki = 20;
kd = 7;

num = [kd*(wn^2) kp*(wn^2) ki*(wn^2)];

den = [1 ((2*zeta*wn)+(kd*(wn^2))) (kp*(wn^2)) (ki*(wn^2))];

transfer_function = tf(num,den);

[y,t] = step(transfer_function);

figure;
plot(t,y,'LineWidth',2);

xlabel('Time(sec)');
ylabel('Altitude');

grid on;

title('DRONE ALTITUDE STABILIZATION USING PID CONTROLLER');

stepinfo(transfer_function,'RiseTimeLimits',[0 1])

t = 0:0.01:20;

u = ones(size(t));

u(t>=5) = 0.7;

[y,t] = lsim(transfer_function,u,t);

figure;

plot(t,y,'LineWidth',2);

xlabel('Time(sec)');
ylabel('Altitude');

title('Response under Disturbance');

grid on;
