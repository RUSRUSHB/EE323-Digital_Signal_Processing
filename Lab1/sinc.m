function [x,y]=sinc(N)
    x = linspace(-10*pi,10*pi,N);
    y=zeros(1,N);
    y(x==0) = 1;
    idx = x~=0;
    y(idx) = sin(pi*x(idx)) ./ (pi*x(idx));
end