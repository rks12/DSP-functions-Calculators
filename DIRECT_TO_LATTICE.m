clc;
clear all;
close all;
a1=input('enter coefficient of Z[-1]: ');
a2=input('enter coefficient of Z[-2]: ');
a3=input('enter coefficient of Z[-3]: ');
k3=a3;
k2=(a2-(a1*k3))/(1-k3^2);
x=(a1-a2*k3)/(1-k3^2);
k1=(x-k2*x)/(1-k2^2);
fprintf('k[1]= %.3f\n',k1);
fprintf('k[2]= %.3f\n',k2);
fprintf('k[3]= %.3f\n',k3);
fprintf('A2= 1+ %.3fz[-1]+%.3fz[-2]\n',x,k2);
fprintf('A1= 1+ %.3fz[-1]\n',k1);











