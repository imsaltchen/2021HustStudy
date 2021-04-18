function [a0,a1,a2,a3] = Sancicha(Theta0,Thetaf,Tf)
%SANCICHA 传入参数就可以得到结果
%   此处显示详细说明
a0 = Theta0
a1 = 0
a2 = 3/(Tf)^2 *(Thetaf-Theta0)
a3 = -2/(Tf)^3 *(Thetaf-Theta0)
jieguo = [num2str(a0),'+' num2str(a2) 't^2' num2str(a3) 't^3'] %#ok<NASGU>
end

