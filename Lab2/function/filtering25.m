function y=filtering25(x)
    N_ = length(x)+3;
    x=[0,0,0,x];
    y=zeros(1,N_);

    for i = 4:N_
        y(i)=y(i-1)+1/3*(x(i)-x(i-3));
    end
    y=y(4:end);

end