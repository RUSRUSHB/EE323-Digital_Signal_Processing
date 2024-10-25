function plot_different_DTFT(x, w_lens)
    
    sample_points = 1024;
    number = length(w_lens);
    
    
    figure
    sgtitle('Magnitudes Using Different Lengths of {w(n)}')
    for k = 1:number
        w_len = w_lens(k);
        n = 0:w_len-1;
        x = cos(pi/4*n);
        [X, w]=DTFT(x, sample_points);

        subplot(number, 1, k)
        plot(w, abs(X))
        Title = strcat('length = ', num2str(w_len));
        xlabel('\omega'), ylabel('|W(e^{j\omega})|'), title(Title)
    end
    