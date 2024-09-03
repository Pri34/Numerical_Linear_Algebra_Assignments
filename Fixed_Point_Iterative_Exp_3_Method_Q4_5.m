%Q4
clc
clear all

k=1;
x0=input("Enter X0=");
%g= @(x) -2*sin(pi*x); %g1  ans is 0   tol=0.0001
%g= @(x) ((asin(-x/2))/pi) %g2   ans is 0.000673  tol=0.01
g= @(x) ((asin(-x/2)+2*pi)/pi) %g3  ans is 1.682084     tol=0.001
%we added pi/2 and osse interval change ho gya and 1 se 2 ke beech aa gya
%kyuki sin is repeating
max_iter=15;
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