%Q2 (ii)
clc
clear all

k=1;
x0=input("Enter X0=");
syms x
%f= @(x) (exp(-x)*(x^2+5*x+2)+1); %x0=-1 ans is -0.579159 with 5 iterations
%f= @(x) (2*sin(x)-x);% x0=1 ans is 1.895494 with 13 iterations
df= inline(diff(f(x)));
max_iter=15;
tolerance = input("Enter tolerance: ");

while k<=max_iter
    x1=x0-f(x0)/df(x0);
    
    if (abs(x1-x0)<=tolerance)
        fprintf("root is %f in %d iterations",x1,k)
        break;
    end
    x0=x1;
    k=k+1;
end