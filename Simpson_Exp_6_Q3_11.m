clc
clear all

%N is no of subintervals
%a and b are interval

f=@(x) ((cos(x))^2)

a = input('Enter a')
b = input('Enter b')
N = input('Enter Number of subintervals')
h = (b-a)/N;
sum=0;
x=0;

for i=1:N-1
    x=a+i*h;
    if(rem(i,2)==0)
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end

I=(h/3)*(f(a)+sum+f(b))

    
