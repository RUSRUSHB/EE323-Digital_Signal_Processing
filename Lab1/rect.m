function [x,y]=rect(N)
    x=linspace(-2,2,N);
    y = (abs(x)<=0.5);
end