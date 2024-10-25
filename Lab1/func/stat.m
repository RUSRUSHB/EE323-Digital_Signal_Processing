function [mean,stdev] = stat(x)
    %STAT Interesting statistics.
    n = length(x);
    mean = sum(x) / n;
    stdev = sqrt(sum((x - mean).^2)/n);