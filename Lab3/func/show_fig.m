function show_fig(path)
    % 加载并显示 .fig 文件
    fig = openfig(path, 'new', 'visible');  % 加载 .fig 文件，但不弹出窗口

    % 获取 figure 中的所有 axes 对象
    axesHandles = findall(fig, 'Type', 'axes');

    % 在 Live Script 中显示图形
    copyobj(axesHandles, gcf);  % 将 axes 对象复制到当前图形窗口
end

