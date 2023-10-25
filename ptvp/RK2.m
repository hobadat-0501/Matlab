%4.4
function [t,y] = RK2(f,t0,tn,y0,h)
y = y0;
  t = t0;

  % Vòng lặp tính toán
  while (t < tf)

    % Tính giá trị k1
    k1 = f(t, y);

    % Tính giá trị k2
    k2 = f(t + h, y + h * k1);

    % Tính giá trị y(t + h)
    y = y + h * (k1 + k2) / 2;

    % Cập nhật giá trị t
    t = t + h;

  end

    y = double(y);
    t = double(t);
end