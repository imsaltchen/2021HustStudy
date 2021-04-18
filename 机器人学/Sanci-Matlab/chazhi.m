clc;clear
%% 计算三次样条。
syms a0 a1 a2 a3 t Theta
[a0,a1,a2,a3] = Sancicha(-5,80,4);
Theta=a0+a1*t+a2*t^2+a3*t^3;
Velocity=diff(Theta,t,1)
Accelerace=diff(Theta,t,2)
% 画图
figure(1);
z = 0:3/200:3;
The=subs(Theta,t,z);
subplot(3,1,1)
plot(z,The);
xlabel('t/s');
ylabel('Theta/Deg');

subplot(3,1,2)
Vel=subs(Velocity,t,z);
plot(z,Vel);
xlabel('t/s');
ylabel('Velocity/Deg * s^-1');

subplot(3,1,3)
Acc=subs(Accelerace,t,z);
plot(z,Acc);
xlabel('t/s');
ylabel('Accelerace/Deg * s^-2');
%% 计算带抛物线过渡的直线样条
[Tb,Acc2] = Paowucha(-5,80,4)
[Tb,Acc2] = Paowucha(15,75,3)

% % 画图 
% figure(2);
% z=0:Tb/100:Tb;
% Theta=Acc2*t^2 /2
% The =subs(Theta,t,z)
% plot(z,The)
% hold on
% 
% z=Tb:(Tf-2*Tb)/100:Tf-Tb;
% Theta=Acc2*Tb*t
% The =subs(Theta,t,z)
% plot(z,The)
% 
% z=Tf-Tb:Tb/100:Tf;
% Theta=Acc2*t^2 /2
% The =subs(Theta,t,z)
% plot(z,The)
% 
% hold off
% 
% subplot(3,1,1)
% subplot(3,1,1)
