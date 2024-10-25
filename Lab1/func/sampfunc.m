function sampfunc(Ts)
    n = 0:(10/Ts);
    f = sin(2*pi*Ts*n);
    stem(n,f)
    title_str = sprintf('Ts = %f', Ts);
    title(title_str)
    axis([0,length(n),-1,1])
    ylabel('y')
end