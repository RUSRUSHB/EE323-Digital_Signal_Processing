function y=differentiate(x)
    filter = [1,-1];
    y = conv(x,filter);
    y = y(1:end-1);

    