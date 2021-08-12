%1
syms t w;
h=exp(-2*t)*heaviside(t);
H=fourier(h,w)
w1=0:0.1:10;
HH=subs(H,w,w1);

figure(1);
plot(w1,abs(HH));
legend('metro H(w)');

figure(2);
plot(w1,angle(HH));
legend('fash H(w)');

diaf=HH-abs(HH).*exp(j*angle(HH));
figure(3);
plot(w1,abs(eval(diaf)));
ylim([-0.00001 0.00001]);



%2
clear
syms t w;
x=exp(-3*t)*heaviside(t);
y=t*exp(-3*t)*heaviside(t);
X=fourier(x,w);
Y=fourier(y,w);
H=Y/X
h=ifourier(H,t)

%epivevaiwsh
clear
syms t;
y=t*exp(-3*t)*heaviside(t);
figure(4);
ezplot(y,[0 10]);
axis tight;
legend('y(t)');

%xrhsh synelikshs
t=0:0.01:5;
x=exp(-3*t);
h=x;
y=conv(x,h)*0.01;
figure(5);
plot(0:0.01:10, y);
axis tight;
legend('y(t) meso suneliksh');