disp(" EXP 5 Name Navnish Shettigar Roll No-35")
Asys=4200//area of system
Acell=12//area of cell
N=1001//total channels
K=7//cluster size
Acl=K*Acell//area of cluster
M=Asys/Acl//no of clusters
disp("no of clusters=",M)
J=N/K//cell capacity
disp("cell capacity in channels/cell",J)
C=N*M//system capacity
disp("system capacity in no of channels",C)

k=4
acl=k*Acell//area of new cluster size
m=Asys/acl
m1=floor(m)
disp("no of clusters in reduced cluster size",m1)
j=N/k//cell capacity
j1=floor(j)
disp('new cell capacity for reduced size in channels/cell',j1)
c=N*m1
disp('New system capacity for reduced cluster size in no of channels',c)
