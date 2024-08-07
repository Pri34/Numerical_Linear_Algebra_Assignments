clc
clear all
%{
A = [1, 2, 3:7, 9, 4]
B = [7;9;10;11]

size(B)
size(B, 1)  %To get nummber of rows
size(B, 2)  %To get nummber of columns

% Single column or row is treated as an array
B(4, 1)
B(4)

A = [1, 5; 9, 4]
B = [7, 9; 4, 8]

A+B
A-B
A*B     % Matrix multiplication
A.*B    % Component-wise multiplication

C = [1:20]
D = [1:0.1:5]

x = 5
y = 9
z = x+y
z = 7

I = eye(2)          % Identity matrix of 2x2 order
Z = zeros(2, 3)     % Zero matrix of 2x3 order
%}

x = [1:6]
y = [1.5, 2.7, 9.3, 4.5, 6.9, 7]

plot(x, y, 'r')
xlabel('Values of x')
ylabel('Values of y')
title('X vs Y')
legend('Red line X vs Y')