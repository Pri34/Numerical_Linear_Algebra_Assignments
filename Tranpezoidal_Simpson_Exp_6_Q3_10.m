clc
clear all

%N is no of subintervals
%a and b are interval

f=@(x) ((exp(x))^((-x)^2)*cos(x))

a = input('Enter a')
b = input('Enter b')
N = input('Enter Number of subintervals')
h = (b-a)/N;
sum=0;
x=0;

for i=1:N-1
    x=a+i*h;
    sum=sum+2*f(x);
end

I=(h/2)*(f(a)+sum+f(b))

    
