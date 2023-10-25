clc; clear all; close all;
a=input('a= '); % Nhập vào giá trị của a
b=input('b= '); % Nhập vào giá trị của b
fa=-inf; % Gán fa bằng âm vô cùng
fb=inf; % Gán fb bằng dương vô cùng
while (b-a)>eps*b
    x=(a+b)/2;
    fx=x^3 + 4*x*x + x-6;
    if sign(fx)==sign(fa)
        a=x;
        fa=fx;
    else
        b=x;
        fb=x;
    end
end
disp('Nghiem cua phuong trinh la: ')
x