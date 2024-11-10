function [solX, solY] = relaSolve(x, y, x_start, y_start)

    if nargin == 2
        x_start = 0; y_start = 0;
    end
    x0_stored = x(1);

    idx_start = min(x_start, y_start);
    x = [zeros(1, x_start-idx_start), x];
    y = [zeros(1, y_start-idx_start), y];

    padded_len = length(x) + length(y) - 1;

    x_pad = padded_len - length(x);
    y_pad = padded_len - length(y);

    x = [x, zeros(1, x_pad)];
    y = [y, zeros(1, y_pad)];

    X = sym(zeros(x_pad+1, padded_len));
    Y = sym(zeros(y_pad+1, padded_len));

    for k = 1:x_pad+1
        X(k, :) = circshift(x, k-1);
    end
    for k =1:y_pad+1
        Y(k, :) = circshift(y, k-1);
    end
    X
    Y
    Tx = arrayfun(@(i) sym(['tx', num2str(i)]), 0:x_pad);
    Ty = arrayfun(@(i) sym(['ty', num2str(i)]), 0:y_pad);
    % 生成sym

    Ty(1)=1;  % set to 1 as our wish

    eq = Tx*X == Ty*Y;

    vars = [Tx(:); Ty(:)];
    vars = vars(vars ~= 1);
    sol = solve(eq,vars);

    sol.ty0 = 1;
    fields = fieldnames(sol);
    idx_ty1 = find(strcmp(fields, 'ty1'));
    new_fields = [fields(1:idx_ty1-1); {'ty0'}; fields(idx_ty1:end-1)];
    sol = orderfields(sol, new_fields);

    fields = fieldnames(sol);
    
    % 遍历所有字段，并将每个字段的值乘以x0_stored以归一化
    for i = 1:numel(fields)
        field = fields{i};
        sol.(field) = sol.(field) * x0_stored;
    end
    
    idx_split = find(strcmp(fieldnames(sol), 'ty0'));
    fields1 = fields(1:idx_split-1);
    fields2 = fields(idx_split:end);
    solX = rmfield(sol, fields2);
    solY = rmfield(sol, fields1);

end
