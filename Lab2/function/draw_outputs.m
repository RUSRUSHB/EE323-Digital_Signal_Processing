function draw_outputs(Sgtitle, n,y1, y2, y3)
    figure
    
    % num = nargin-2;
    % 
    % for i = 1:num

    % end

    subplot(311), stem(n, y1), title('bbox1'), sgtitle(Sgtitle)
    subplot(312), stem(n, y2), title('bbox2')
    subplot(313), stem(n, y3), title('bbox3')
end