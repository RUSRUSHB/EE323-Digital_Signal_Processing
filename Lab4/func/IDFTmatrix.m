function B=IDFTmatrix(N)
    k=1:N; n=1:N;

    B=exp(1j*2*pi*(k-1).'*(n-1)/N)/N;

end