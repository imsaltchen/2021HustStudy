clc;clear
%% bezier
syms x
B=[0.5^3 0.5^2 0.5 1]*[-1 3 -3 1;3 -6 3 0;-3 3 0 0;1 0 0 0]
X=[0 20 0;x 20 0; 20 (20*sqrt(2)-x) 0 ; 20 0 0]
P=B*X
