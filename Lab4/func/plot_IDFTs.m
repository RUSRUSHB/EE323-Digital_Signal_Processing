function plot_IDFTs(xs, n)
    num_x = size(xs, 1);
    
    figure
    sgtitle('IDFT')
    for k = 1:num_x
        subplot(num_x, 1, k)
        stem(n, abs(xs(k, :)))
        Title = strcat('x_{', num2str(k), ', rec}');
        title(Title), ylabel('x')
    end
    xlabel('n')
end