function [w, W_ejw]=get_W_ejw(N, num, do_plot)

    if nargin==2
        do_plot=false;
    end

    w = linspace(-pi, pi, num);
    
    W_ejw = zeros(1, num);
    mask = logical([1, zeros(1,(num-3)/2), 1, zeros(1,(num-3)/2), 1]);
    W_ejw(mask)=N;

    W_ejw(~mask) = (1-exp(-1j*w(~mask)*N)./(1-exp(-1j*w(~mask))));

    if do_plot
        figure
        subplot(211)
        plot(w, abs(W_ejw))
        xlabel('\omega'), ylabel('|W(e^{j\omega})|'), title('Magnitude')

        subplot(212)
        plot(w, unwrap(angle(W_ejw)))
        xlabel('\omega'), ylabel('\angle W(e^{j\omega})'), title('Angle')

        sgtitle('Magnitude and Phase of W(e^{j\omega})')


    end
end