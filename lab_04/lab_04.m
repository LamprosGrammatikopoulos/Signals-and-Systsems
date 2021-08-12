%1
syms t s;
f=exp(-t);
laplace(f)
F=1/(1+s);
ilaplace(F)

%2
clear all
syms s t a;
f=1;
laplace(f,s)
laplace(dirac(t),s)
laplace(heaviside(t),s)
x=diff(dirac(t),3);
laplace(x,s)
x=exp(-a*t)*heaviside(t);
laplace(x,s)

%3
clear all
syms t s a w;
ilaplace(1/(a+s),t)
ilaplace(1/(s-i*w),t)
ilaplace(1/(s^2+w^2),t)
F=factorial(9)/(s+a)^10;
ilaplace(F,t)
F=1/(s+a)^6;
ilaplace(F,t)

%4
clear all
den=[1 5 2 -8];
riz=roots(den)
syms s;
F=(s^2+3*s+1)/(s^3+5*s^2+2*s-8);
c1=limit((s-riz(1))*F,s,riz(1))
c2=limit((s-riz(2))*F,s,riz(2))
c3=limit((s-riz(3))*F,s,riz(3))
