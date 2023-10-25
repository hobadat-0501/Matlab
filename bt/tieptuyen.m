%bài 4.2
function [x1, ep, n] = tieptuyen(f, x0, err, nmax)
    n = 0;
    ep = err;
    while (ep >= err) && (n < nmax)
        df = diff(f);
        x1 = x0 - subs(f, x0) / subs(df, x0);
        ep = abs((x1 - x0) / x1); % Sửa ep=abs((x1-x0)/x0) thành ep=abs((x1-x0)/x1)
        n = n + 1;
        x0 = x1;
    end
    x1 = double(x1);
    ep = double(ep);
end