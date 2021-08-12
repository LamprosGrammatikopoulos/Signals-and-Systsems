%1
syms t w;
x=exp(-t^2);
fourier(x)
pretty(ans)

%2
syms t w;
X=1/(1+j*w);
ifourier(X,t)
pretty(ans)

%3
syms w t;
x=1;
fourier(x,w)
pretty(ans)

%4 sinc
syms t w T;
x=heaviside(t+T/2)-heaviside(t-T/2);
xx=subs(x,T,4);
ezplot(xx,[-4,4])

X1=fourier(x,w)
pretty(X1)
simplify(X1)

ww=[-30:0.1:-0.1 0.1:0.1:30];
X=subs(X1,w,ww);
X=subs(X,T,4);
plot(ww,X);
xlabel('\omega rad/sec');
legend('X(\omega)');