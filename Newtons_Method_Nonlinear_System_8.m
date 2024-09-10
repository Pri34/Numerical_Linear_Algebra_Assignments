clc 
clear all

syms x1 x2
x11=1;
x22=1;
k=1;
max_iter=15;
tol=10^(-3);
f1=@(x1,x2)(x1^2)+(x2^2)-1;
f2=@(x1,x2)(x1^2)+(x2^2);

df1_dx1=diff(f1,x1)
df1_dx2=diff(f1,x2)
df2_dx1=diff(f2,x1)
df2_dx2=diff(f2,x2)

%df1_dx1=@(x1,x2)2*x1;
%df1_dx2=@(x1,x2)2*x2;
%df2_dx1=@(x1,x2)x2;
%df2_dx2=@(x1,x2)x1;

while k<=max_iter
J=[df1_dx1,df1_dx2;df2_dx1,df2_dx2]
if(det(J)==0)
    error("no solution")
end
F=[f1(x11,x22);f2(x11,x22)]
delta=-inv(J)*F;
    if norm(delta)<=tol
        fprintf ("the root is (%f,%f) in %f iterations",x11,x22,k)
        break
    end
x11=x11+delta(1);
x22=x22+delta(2);
k=k+1;
end

