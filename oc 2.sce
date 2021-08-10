clear;
close;
clc;
n1=input("enter the value of core refractive index=")
n2=input("enter the value of cladding refractive index=")
R=input("enter the value of radius of curvature of bend in m=")
lambda=input("enter the value wavelength in micrometer=")
c1=1.2;
c2=0.5;
Rc=(3*lambda*1*10^-6*n1^2)/(4*3.14*((n1^2-n2^2)^(3/2)));
alpha=c1*exp(-c2*R);
alphadb=10*log(alpha)
disp(alphadb,"Bending loss in db=");
disp(Rc,"critical radius in m=");
