%4.3
function [x1, ep, n] = secanti(f, x0, d, err, nmax)
    if nargin < 5
        nmax = 1000;
    end
    
    if nargin < 4
        err = 1e-5;
    end

    x1 = x0 - (d - x0) * subs(f, x0) / (subs(f, d) - subs(f, x0));
    n = 1;

    ep = abs((x1 - x0) / x0);

    while ep >= err && n <= nmax
        x1 = x1 - (d - x1) * subs(f, x1) / (subs(f, d) - subs(f, x1));
        n = n + 1;
        ep = abs((x1 - x0) / x0);
    end
    
    x1 = double(x1);
    ep = double(ep);
end