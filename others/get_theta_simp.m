% x0=10*1000;
% z0 = 700;


function theta_sol = get_theta_simp(x0, h, theta_0)
    persistent g v0 H eq hp
        
    if isempty(g)
        % 基地固定参数
        H = 1150; % 基地装甲板中心高度
        % ha = 141; % height_armor: 基地装甲板高度
        % wa = 242; % width_armor: 基地装甲板宽度 TODO: 检查
        % angle_armor = deg2rad(27.5); % 基地装甲板倾斜角
        
        % 英雄固定参数
        % L = 330; % 枪口长度（从pitch算）
        hp = 366; % pitch高度
        v0 = 15.7*1000; % 弹丸初速
    
        g = 9.81*1000;
    end

    z0 = H - hp - h;

    eq = @(theta) z0.*cos(theta) - sin(theta).*cos(theta).*x0 + g.*x0.^2./2./v0.^2;
    
    if nargin == 2
        theta_0 = deg2rad(4);
    end
    
    options = optimoptions('fsolve', 'Display', 'off');
    theta_sol_rad = fsolve(eq, theta_0, options);
    theta_sol = rad2deg(theta_sol_rad);
end

% alpha = asin((z0+g*x0^2/v0^2)/sqrt(z0^2+x0^2))


