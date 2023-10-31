function Cost_Function_3(x, y, x0)
    syms a b c d
    m = sum(x.^6);
    n = sum(x.^5);
    p = sum(x.^4);
    z = sum(x.^3);
    v = sum(x.^2)
    q = sum(x);
    g = sum(x.^3.*y);
    s = sum(x.^2.*y);
    t = sum(x.*y);
    u = sum(y);

    pt1 = m * a + n * b + p*c +z*d - g;
    pt2 = n * a + p * b + z*c +v*d- s;
    pt3 = p * a + z * b + v * c+ q*d - t;
    pt4 = z * a + v * b + q * c+ length(x)*d - u;

    [a, b, c,d] = solve(pt1, pt2, pt3,pt4);
    
    disp('Hệ số a:')
    disp(double(a))
    disp('Hệ số b:')
    disp(double(b))
    disp('Hệ số c:')
    disp(double(c))
     disp('Hệ số d:')
    disp(double(d))
    
    y0 = a * x0^3 + b * x0^2 + c*x0 +d;
    
    disp('Kết quả xấp xỉ: ') 
    disp(double(y0))
end