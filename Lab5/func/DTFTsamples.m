function [X, w]=DTFTsamples(x)
    
    N = length(x);
    w = linspace(-pi, pi, N+1);
    w = w(1:end-1);
    X = zeros(N, 1);
    for k = 1:N
        for n = 1:N
            X(k) = X(k)+x(n)*exp(-1j*w(k)*(n-1));
        end
    end
end