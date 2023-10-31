%code mẫu RK4
function RK4(f,a,b,y0,h)
syms x y;
a=0;
b=1;
f= @(x,y) y+y*x^2;
x(1)=0;
y(1)=1;
h=0.1;
n=10
for i=1:1:10
x(i+1)=h*i
k1(i)=h*f(x(i), y(i));
k2(i)=h*f(x(i)+h/2, y(i)+k1(i)/2);
k3(i)=h*f(x(i)+h/2, y(i)+k2(i)/2);
k4(i)=h*f(x(i)+h, y(i)+k3(i));
y(i+1)= y(i)+(1/6)*(k1(i)+2*k2(i)+2*k3(i)+k4(i))
end
plot ( y);