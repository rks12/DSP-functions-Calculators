clc;
clear all;
close all;
M=input('enter the value of M:');
omega= input('enter the value of omega');
t=(M-1)/2 ;
for n=0:M-1;
% c means omega(w)
c(n+1)=.54-.46*cos((2*pi*n)/(M-1));
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
fprintf('\n\n');

for n=1:M
fprintf('w(%d)=',n-1)
disp(c(n));
end
fprintf('\n\n');

for n=1:M
%fprintf('y(%d)=%d \n',n-1,Y(n))
fprintf('y(%d)=',n-1)
disp(Y(n));
end