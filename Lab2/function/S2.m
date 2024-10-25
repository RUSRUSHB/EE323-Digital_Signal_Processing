function y = S2(x)
    N = length(x);
    y = zeros(1,N);
    y(1)=0;

    for i = 2:N
        y(i)=1/2*y(i-1)+x(i);
    end
