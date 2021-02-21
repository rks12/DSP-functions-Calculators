clc;
clear all;
close all;

k1=input('enter K1: ');
k2=input('enter K2: ');
k3=input('enter K3: ');
%k1=1/4;
%k2=1/2;
%k3=1/3;
%disp(sym(k1)+sym(k2))
fprintf('A1= 1+ %.3fz[-1]\n',k1);
a=k1*(1+k2);
fprintf('A2= 1+ %.3fz[-1]+%.3fz[-2]\n',a,k2);
alfa_1=k2*k3+a;
alfa_2=k2+k3*a;
%alfa_3=k3;
fprintf('A3= 1+ %.3fz[-1]+%.3fz[-2]+%.3fz[-3]\n',alfa_1,alfa_2,k3);
fprintf('alfa[0]= 1\n');
fprintf('alfa[1]= %.3f\n',alfa_1);
fprintf('alfa[2]= %.3f\n',alfa_2);
fprintf('alfa[3]= %.3f\n',k3);