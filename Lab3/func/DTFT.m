function X=DTFT(x, n0, dw)
    N = length(x);
    
    w = (-pi: dw: pi);
    len = length(w);
    X = zeros(1, len);
        
    for k = 1:len
        for n = 1:N
            X(k) = X(k)+x(n)*exp(-1j*w(k)*(n+n0-1));
        end
    end

end