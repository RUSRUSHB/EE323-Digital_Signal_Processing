function X=DFTsum(x)
    
    % % convert cell to mat
    % % used for arrayfun()
    % if iscell(x)
    %     x = cell2mat(x);
    % end

    N = length(x);
    X = zeros(1, N);

    for k = 0:N-1
        for n = 0:N-1
            X(k+1)=X(k+1)+x(n+1)*exp(-1j*2*pi*k*n/N);
        end
    end
end