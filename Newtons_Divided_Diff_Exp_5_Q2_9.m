clc
clear all

x = [0,0.25,0.5,0.75];
f = [1,1.64872,2.71828,4.4816];
p=0.43;
sum=0

n = length(x);
DD = zeros(n)

DD(:,1) = f  %to access all rows of a column 1 then use ":" 
%M(2:5,1:4) 2nd row to 5th row and 1st col to 4th col

%move col wise then phele j wala loop then i wala loop chalega i.e for row
for j=2:n
    for i=j:n
        DD(i,j)=(DD(i,j-1)-DD(i-1,j-1))/(x(i)-x(i-j+1))
    end
end


for i=1:n
    prod(i)=1;
    for j=1:i-1
        prod(i) = prod(i)*(p-x(j))
    end 
end 

for i=1:n
    sum=sum+DD(i,i)*prod(i)
end