function plot_DTFT(omega, X)
    figure
    subplot(211)
    plot(omega, abs(X))
    title('Magnitude of X(e^{j\omega})')
    xlabel('\omega')
    ylabel('|X(e^{j\omega})|')

    subplot(212)
    plot(omega, unwrap(angle(X)))
    title('Phase of X(e^{j\omega})')
    xlabel('\omega')
    ylabel('Phase(X(e^{j\omega}))')
end