% function avg_vec=ave(x)
%     n = length(x);
%     avg_vec = zeros(n,1);
%     for idx = 1:n
%         avg_vec(idx) = mean(x(1:idx));
%     end
% end

function avg_vec = ave(x)
    n = length(x);
    cumulative_sum = cumsum(x);
    avg_vec = cumulative_sum ./ (1:n)';
end
