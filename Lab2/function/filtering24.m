function y=filtering24(x)
    N = length(x);
    y=zeros(1,N);
    for i = 2:N
        y(i)=0.8*y(i-1)+0.2*x(i);
    end
end