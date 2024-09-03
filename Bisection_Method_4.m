clc 
clear all

f = @(x) x^2 - 4*x - 2
a = input("Enter a: ");
b = input("Enter b: ");
tolerance = input("Enter tolerance: ");

while abs(b-a) > tolerance
    if (f(a)*f(b) > 0)
        disp("IVT is not applicable in this interval. Please change the interval.")
    else
        c = (a+b)/2;
    
        if(f(a)*f(c) < 0)
            b = c;
        else
            a = c;
        end
    end
end

a
b