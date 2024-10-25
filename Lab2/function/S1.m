function y=S1(x)
    h=[1,-1];
    y=conv(x,h);
    y=y(1:end-1);