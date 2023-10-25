function N = PP_NS_Newton(x,y,x0)
dodai=length(x);
n=dodai;
a=[0 0];
a(1)=y(1);
dem=0;
tmp=1;
N=a(1);
for i=1:dodai
    k(i,1)=y(i);
end
for j=2:dodai
    dem = dem + 1;
    for i= 1:n-1
        k(i,j)=(k(i+1,j-1)-k(i,j-1))/(x(i+dem)-x(i));
    end
    n=n-1;
    a(j)=k(1,j);
end
for i=2:dodai
    tmp= tmp*(x0-x(i-1));
    N=N+a(i)*tmp;
end
disp('He so a:')
disp(a)
end