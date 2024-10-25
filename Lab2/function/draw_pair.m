function draw_pair(n,y1,y2,Title1,Title2,Sgtitle)
    figure
    subplot(211), stem(n,y1), title(Title1)
    subplot(212), stem(n,y2), title(Title2), xlabel(n)
    sgtitle(Sgtitle)