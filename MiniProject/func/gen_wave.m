


fs = 8192; f = 220; T = 1/f;
rhythm = 1;
t = linspace(0, rhythm, fs * rhythm);
y = 0.8*sin(2*pi*f*t)+0.1*sin(2*pi*2*f*t)+ ...
    0.05*sin(2*pi*3*f*t)+0.05*sin(2*pi*4*f*t);
%waves = y.*exp(-x/rhythm);
plot(t,y);
axis([0 0.01 -1 1]);
sound(y, fs);
