
function P = lagrange1(x, y, x0)
    dodai = length(x);
    Pi = 0;
    for i = 1:dodai
        tuso = 1; 
        mauso = 1;
        for j = 1:dodai
            if i ~= j
                tuso = conv(tuso, [1, -x(j)]);
                mauso = mauso * (x(i) - x(j));
            end
        end
        L = tuso / mauso;
        Pi = Pi + L * y(i);
    end
    disp('He so cua P la :');
    disp(Pi);
    P = polyval(Pi, x0);
end