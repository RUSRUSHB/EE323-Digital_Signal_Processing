function [n,y]=dtfunc1(a)
    n=-20:20;
    y_1 = double(0<=n & n<10);
    y = a.^n .* y_1;
end
    