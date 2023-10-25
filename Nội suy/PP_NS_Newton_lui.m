function N = PP_NS_Newton_lui(x, y, x0)
    dodai = length(x);
    n = dodai;
    a = zeros(1, n);
    a(n) = y(n);
    N = a(n);
    
    k = zeros(n, n);
    k(:, 1) = y;
    
    for j = 2:n
        for i = 1:n-j+1
            k(i, j) = (k(i+1, j-1) - k(i, j-1)) / (x(i+j-1) - x(i));
        end
        a(n-j+1) = k(1, j);
    end
    
    tmp = 1;
    for i = 2:n
        tmp = tmp * (x0 - x(i-1));
        N = N + a(n-i+1) * tmp;
    end
    
    disp('He so a:');
    disp(a);
end