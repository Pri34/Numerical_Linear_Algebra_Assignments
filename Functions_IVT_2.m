% Q1 use ivt to find the interval of roots
% interval bisection mein given but here hum khud se lenge. N value input
% karvayenge and internal will be -n to n and osmein we will check our root
% f(x)=x2-4x-2
%to define a function, we take variable name and = 
%@ se it will know it is function defination
clc
clear all

f=@(x) (x^2 - 4*x -2);

% ; use if we dont want it to print
%let n=10 %check the root from -10 to 10
%abhi ke liye lets take integer values

% a=-10 b=10    

%condition apply and if interval is correct and then shrink the interval
%and we will keep on changing interval and condition check karte rahenge
%ismein we are finding interval right now jismein root hai. we will
%bisection method to find root later

n=input('Enter the value of n')

%a=-n;
%b=n;

%variable declaration rules are same like any other language
%condition check now using if else to see agar root issi intervak mein lie
%karta hai

%if f(a)*f(b)<0 %if structure ends with "end" here, no brackets needed here
%    a  %display a and b here
%    b
%end

%for loop 10 times chalana hai hume so use for loop
%kitni baar repeat karna hai dk then while loop bas condition lagado

%for i=a:b
%statement
%end

%hum aise bhi check kar sakte hai like between -10 and -9 and then -9 to -8
%h=1

%fprintf() ismein we can add text and value both

h=1;
for i=-n:n  %i=-10 i+h=-9 lly i+2h=-8
    if f(i)*f(i+h)<0
        a=i
        b=i+h %aab hume sab intervals mil jayenge jismein root hai
        fprintf('Root lies in interval[%f,%f]',a,b) %d is for integer values, idhar 
        % kar sakte hai but generally kaam nhi aata
    end
end