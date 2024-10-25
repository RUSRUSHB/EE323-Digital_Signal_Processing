function plot_DFTs(Xs, n)
    num_x = size(Xs, 1);
    
    figure
    sgtitle('DFT')
    for k = 1:num_x
        subplot(num_x, 1, k)
        stem(n, abs(Xs(k, :)))
        Title = strcat('X_', num2str(k));
        title(Title), ylabel('|X|')
    end
    xlabel('n')
end