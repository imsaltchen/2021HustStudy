%效率因素 eta
    %V带传动效率 eta1  题目规定 1个
    eta1 = 0.95;
    %齿轮传动效率 eta2 8级精度 两对
    eta2 = 0.98;
    %轴承传动效率 eta3 滚动轴承 4对
    eta3 = 0.99;
    %联轴器传动效率 eta4 弹性联轴器 1个
    eta4 = 0.99;
    %滚筒效率 etaw 1个
    etaw = 0.96;
 %总效率 eta
 eta = (eta1*eta2*eta2*eta3*eta3*eta3*eta3*eta4*etaw)
 %分配V带传动比i0 和齿轮传动比i1、i2
i0 =3 ;
i1=4.206;
i2=3.236;
Pd = 6.771;
P1 = Pd*eta1
P2 = P1*eta2*eta3
P3 = P2*eta2*eta3
P4 = P3*eta4*eta3
Pw = P4*etaw
%计算各转速
    %电机轴转速n0
    %高速轴的转速n1= nm/i1
    %中速轴的转速n2= n1/i2
    %低速轴的转速n3= n1/i2
    %带轮轴的转速n4= n3/1
nm=970
n0=nm;
n1 = n0/i0;
n2= n1/i1;
n3 = n2/i2
n4 = n3/1
%------------------------------
%各轴的扭矩
%     电动机扭矩Td N*m
%     高速轴扭矩T1 N*m
%     中速轴扭矩T2 N*m
%     低速轴扭矩T3 N*m
%     带轮轴扭矩T4 N*m
Td = 9550*Pd/nm
T1 = 9550*P1/n1
T2 = 9550*P2/n2
T3 = 9550*P3/n3
T4 = 9550*P4/n4



