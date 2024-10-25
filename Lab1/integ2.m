% function y=integ2(N)
%     x = linspace(0,1,N+1);
%     x(end)=[];
%     y = exp(x);
%     dx = x(2)-x(1);
%     y = sum(y)*dx;
% end

function I = integ1(N)
    x = linspace(0,1,N+1);
    y = exp(x);
    I = sum(y)/(N+1);