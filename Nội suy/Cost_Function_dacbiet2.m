function Cost_Function_dacbiet2(x, y, x0)
    syms A B 
    e=2.71828182846;
    m = sum(x.^2);
    n = sum(x);
    p = sum(x .* y);
    q = sum(y);
    pt1 = m * A + n * B - p;
    pt2 = n * A + length(x) * B - q;
    [A, B] = solve(pt1, pt2);
  
    y0 = A * x0 + B; 
    
    y=10^y0;a=10^A;b=10^(B*log10(e));
    
    disp('he so a:');
    disp(double(a));
    disp('he so b:');
    disp(double(b));
    disp('Ket qua xap xi:');
    disp(double(y));
end
%hàm y=a*e^(bx)