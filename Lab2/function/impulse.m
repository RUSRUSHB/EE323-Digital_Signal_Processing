function [n, delta] = impulse(start, length)
    n = start:start+length-1;
    delta = zeros(1, length);
    delta(n==0)=1;
