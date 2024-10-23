clc
clear all
a = [4, -8, 4, 1;2, -3, 1, 1;4, -3, 1, 4];
n = size(a, 1);
l = eye(n)

for j=1:n-1
    for i=j+1:n
        l(i, j) = a(i, j)./a(j, j)
        for k=1:n+1
            a(i, k) = a(i, k) - l(i, j) * a(j, k);
        end
    end
end
a
l
x(n) = a(n, n+1) / a(n, n);
for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum = sum + a(i, j)*x(j);
    end
    x(i) = (a(i, n+1)-sum) / a(i, i);
end
x