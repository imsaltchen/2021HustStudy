function [Tb,Acc2] = Paowucha(Theta0,Thetaf,Tf)
%PAOWUCHA 此处显示有关此函数的摘要
%   此处显示详细说明
Acc2 = 5*(Thetaf-Theta0)/(Tf^2);
Tb= (Tf/2) - ((Acc2^2*Tf^2-4*Acc2*(Thetaf-Theta0))^(1/2)) /(2*Acc2);

end
