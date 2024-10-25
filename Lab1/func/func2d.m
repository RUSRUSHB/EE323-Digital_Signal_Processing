function f=func2d()
    t = (-50:50) *0.2;

    x=zeros(101,1);
    x(t==0)=1;
    
    idx = t~=0;
    
    x(idx) = sin(pi*t(idx))./(pi*t(idx));

    y=sin(t);

    f = 255*abs(x .*y);
