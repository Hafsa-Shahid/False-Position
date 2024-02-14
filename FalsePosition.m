clc;clear all;
%%%False Position Method%%%
f=@(x) x.^3-7.14*x.^2+11.84*x-5.7;
x=0:0.1:6;
a=4.2;      %%%NEGATIVE f(a)%%%
b=5.12;     %%%POSITIVE f(b)%%%
tol=1e-6;
c=(a*f(b)-b*f(a))/(f(b)-f(a));
itr=0;
while abs(f(c))>= tol
    if f(c)<0
        b=c;
    else
        a=c;
    end
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    itr=itr+1;
end
itr
rf=c