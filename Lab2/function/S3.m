function y=S3(x)
    h=[1,-1/2];
    y=conv(x,h);
    y=y(1:end-1);