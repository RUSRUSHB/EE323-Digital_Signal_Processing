function [n,y]=dtfunc2(a)
    n = -1:10;
    y1 = double(n>=0);
    omega = pi/4;
    y = cos(omega*n).*a.^n.*y1;
end