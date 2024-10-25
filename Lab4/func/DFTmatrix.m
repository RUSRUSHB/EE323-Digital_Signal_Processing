function A=DFTmatrix(N)
    k=1:N; n=1:N;

    A=exp(-1j*2*pi*(k-1).'*(n-1)/N);

end