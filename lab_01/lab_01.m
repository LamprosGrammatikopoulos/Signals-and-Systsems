
%1.
t=0:0.01:10;
y=sin(0.5*pi*t);
plot(t,y)

%2.
t=0:0.01:10;
z1=cos(2*pi*t);
z2=cos(2*pi*t);
z3=exp(-t).*cos(2*pi*t);
z4=1-exp(-t).*sin(2*pi*t);
subplot(221);
plot(t,z1);
xlabel('time');
ylabel('z1');
subplot(222);
plot(t,z2);
xlabel('time');
ylabel('z2');
subplot(223);
plot(t,z3);
xlabel('time');
ylabel('z3');
subplot(224);
plot(t,z4);
xlabel('time');
ylabel('z4');

%3.
%unit step
t=-5:0.1:10;
u=[zeros(1,50),ones(1,101)];
plot(t,u,'r','LineWidth',2);
ylim([-0.1,1.1]);
grid
%dirac
delta=dirac(t);
plot(t,delta,'LineWidth',2);
ylim([-0.1,1.1]);
delta(1)
delta(51)    %d(0)
%ramba
ramb=t.*u;
plot(t,ramb,'g','LineWidth',2);
ylim([-1,10]);
grid
%sqare pulse
unit1=[zeros(1,40),ones(1,111)];
unit2=[zeros(1,60),ones(1,91)];
s_pulse=unit1-unit2;
plot(t,s_pulse,'m','LineWidth',2);
ylim([-0.1,1.1]);
grid




