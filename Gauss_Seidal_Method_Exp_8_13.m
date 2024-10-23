clc
clear all

A=[4.63,-1.21,3.22;-3.07,5.48,2.11;1.26,3.11,4.57];
x0=[0;0;0]; %old values
B=[2.22;-3.17;5.11];
tol=(10)^(-3);
n=size(A,1); %number of rows...(A,2) for number of cols of A
x1=zeros(1,n); %new values
%||(a,b)||=(a^2+b^2)^(1/2)....we need to find error per component toh har
%component ka find karne ki jagah we use nod....this nod is base 2
%by chance nod of base 3 then cube and cueb root

%ith value finding and i+1 old values and new values i-1
%suppose x is i=1 then 2,3,4 old values
%y is i=2 then i-1 is using old values and i+1 onwards using new values

%we are finding sum aage and piche wala sum (ith ke aage and piche ka sum)
%hence using two loops

%aab dono sum add+b wala and divide whole by coefficent of ii(i.e diagonal
%enteries)
k=1
maxiter=100;
while(k<=maxiter)  %we are not taking tol wala here since osse endless ho sakta hai
    %we dont want endless isliye we take maxiter
for i=1:n
    sum1=0;
    sum2=0;
    for j=1:i-1
        sum1=sum1+A(i,j)*x1(j); %do new values
    end
    for j=i+1:n
        sum2=sum2+A(i,j)*x0(j); %do old values
    end
    x1(i)=(B(i)-sum1-sum2)/A(i,i)
end
    if(norm(x1-x0)<tol)
        fprintf('Root is ')
        x1
        break %if root aa gya then break varna new values now become old values
end
x0=x1;
k=k+1;
end
k
%q2 (a) 1.000 1.0000 0.9999 k=10
%q2 (b) -0.7534 0.0411 -0.2808 0.6918  k=12
%q3 -8.9843 -9.4797 10.0464 k=70