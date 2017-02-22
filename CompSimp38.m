function [I] = CompSimp38(a,b,n)
%COMPSIMP38 Summary of this function goes here
%   Detailed explanation goes here
t=0;
h=(b-a)/(n);
if floor(n/3)==n/3
    for i=1:(n+n/3);
        if floor((i-1)/4)==(i-1)/4
            x(i)=a+t*h;
        else
            t=t+1;
            x(i)=a+t*h;            
        end
    end
else
    return
end
I=0;
for i=1:n/3
    I=I+(3*h/8)*(func(x(i*4-3))+3*func(x(4*i-2))+3*func(x(4*i-1))+func(x(4*i)));
end
disp(I);
end