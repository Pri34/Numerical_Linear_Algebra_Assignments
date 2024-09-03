%Q3
clc
clear all

k=1;
x0=input("Enter X0=");
%g= @(x) (tan(x)/4)%ans is 0.000101 tol=0.001
g= @(x) (atan(4*x))%ans is 1.393111 tol=0.001
max_iter=50;
tolerance = input("Enter tolerance: ");

while k<=max_iter
    x1=g(x0);
    
    if (abs(x1-x0)<=tolerance)
        fprintf("root is %f",x1)
        break;
    end
    x0=x1;
    k=k+1;
end