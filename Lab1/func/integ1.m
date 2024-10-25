% function y=integ1(N)
% 
%     x = linspace(0, 2*pi, N+1);
%     x(end)=[];
%     y = (sin(5*x)).^2;
% 
%     dx = x(2) - x(1); 
%     y = sum(y) * dx ;
% end

function I = integ1(N)
    x = linspace(0,2*pi,N+1);
    y = (sin(5*x)).^2;
    I = sum(y)*2*pi/N;