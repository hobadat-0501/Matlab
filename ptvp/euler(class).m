
h=0.02; %nhap h,a,b;
a=1;
b=5;
n=(b-a)/h;
x(1)=1; %nhap gia trị biến cho trc
y(1)=1;
for i=1:n
    x(i+1)=a+(i-1)*h;
    y(i+1)=y(i)+ h*((x(i)-y(i))/y(i)); %( f(x) đề cho)
    disp (y);
    disp (x);
end
plot(x,y)


