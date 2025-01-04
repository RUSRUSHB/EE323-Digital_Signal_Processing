function theta = get_theta_closed(d, h)
    persistent g v0

    if isempty(g)
        g=9.81*1000;
        v0=15.7*1000;
    end

    z0 = 1150-366-h;
    
    alpha_rad = asin((z0+g.*d.^2./v0.^2)./sqrt(z0.^2+d.^2));
    % alpha = rad2deg(alpha_rad);
    
    phi_rad = atan(z0./d);
    % phi = rad2deg(phi_rad);

    theta = rad2deg((alpha_rad+phi_rad)/2);
end