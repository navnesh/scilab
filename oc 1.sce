clc;
clear;
n1=input("Enter the value of Refractive Index n1:")
n2=input("Enter the value of Cladding Refractive n2:")
NA1=sqrt((n1*n1)-(n2*n2))
delta=((n1*n1)-(n2*n2))/(2*(n1*n1))
NA2=n1*sqrt(2*delta)
Acceptance_angle1 =asind(NA1)
Acceptance_angle2 =asind(NA2)
disp("NA1",NA1)
disp("NA2",NA2)
disp('Acceptance angle',Acceptance_angle1)
