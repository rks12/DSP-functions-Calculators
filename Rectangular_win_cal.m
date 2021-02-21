clc;
clear all;
close all;
M=input('enter the value of M:');
omega= input('enter the value of omega');
t=(M-1)/2 ;
for n=0:M-1;
% c means omega(w)
c(n+1)=1;
if n==t
h(n+1)=omega/pi;
else
h(n+1)=sin(omega*(n-t))/(pi*(n-t));
end
Y(n+1)=h(n+1)*c(n+1);
end

for n=1:M
fprintf('hd(%d)=',n-1)
disp(h(n));
end
fprintf('(remember)All answers in form of e are 0 \nh(n) will be same hd(n)');
