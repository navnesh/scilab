clc
disp('Name:Navanish Shettigar Rollno.:35 Class:ET2')
ci=15 //db
disp('ci=',ci)
CI=10^((ci)/10) //antilog
disp('CI=',CI)
q=(6*(CI))^0.25 //alpha=4
K=ceil(q*q/3) //cluster size
disp('Minimum cluster size for ci=15',K)
k=7
q1=sqrt(3*k)
C1I1=(q1^4)/6
c1i1=10*log10(C1I1) //db
disp('Value of ci for k=7 is',c1i1)
if (c1i1<20) then
    disp('Cluster size cannot meet the desired C/I requirement')
    C2I2=10^(20/10)
    q2=(6*C2I2)^0.25
    k1=ceil(((q2)^2)/3)
    disp('Nearest valid cluster size is',k1)
else
    disp('Cluster size determined is adequate')
end
