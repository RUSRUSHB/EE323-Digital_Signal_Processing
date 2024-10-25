function y=filtering25_improved(x)
    N_ = length(x)+3;
    x=[x(1:3),x];
    y=zeros(1,N_);
    y(1:3)=x(1:3);

    for i = 4:N_
        y(i)=y(i-1)+1/3*(x(i)-x(i-3));
    end
    y=y(4:end);

end