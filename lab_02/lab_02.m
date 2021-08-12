%dhmiourgia kai ektupwsh twn sunarthsewn h(t) kai x(t)
format compact
time1 = linspace(0,10,1001);
h1 = exp(-time1);
h = [0 h1];
time = [0 time1]; %used for h(t)
timex = [-1 -1 0.5 0.5 3 3]; %used for x(t)
x = [0 0.6 0.6 0.3 0.3 0];
figure(1);
plot(time,h,timex,x);
grid;
xlabel('\tau');
axis([-5 10 0 1]);
title('kroustikh apokrish kai shma eisodou');
gtext('x(\tau)');
gtext('h(\tau)');



%anastrofh
figure(2);
plot(-time,h,timex,x);
grid;
xlabel('\tau');
gtext('x(\tau)');
gtext('h(-\tau)');



%metakinhsh kata 3 (t=-3) pros ta aristera (den uparxei epikalupsh)
t=-3;
figure(3);
plot(-time+t,h,timex,x);
grid;
xlabel('\tau');
gtext('x(\tau)');
gtext('h(-\tau)');



%metakinhsh kata -0.3 (den exoume epikalupsh me to proto tmhma ths x(t))
t=-0.3;
figure(4);
plot(-time+t,h,timex,x);
grid;
xlabel('\tau');
gtext('x(\tau)');
gtext('h(-\tau)');



%metakinhsh kata 1.4 (exoume plhrh epikalupsh me to proto tmhma ths x(t) kai
merikh me to deutero)
t=1.4;
figure(5);
plot(-time+t,h,timex,x);
grid;
xlabel('\tau');
gtext('x(\tau)');
gtext('h(-\tau)');



%metakinhsh kata 3.9 (exoume plhrh epikalupsh kai me ta duo tmhmata ths x(t))
t=3.9;
figure(6);
plot(-time+t,h,timex,x);
grid;
xlabel('\tau');
gtext('x(\tau)');
gtext('h(-\tau)');



%sunarthsh tou apotelesmatos ths sunelikshs, dhladh ths eksodou y(t) tou susthmatos
%proto tmhma , -1=<t=<0.5
t1=-1:0.1:0.5;
y1=0.6*(1-exp(-1-t1));
%deutero tmhma , 0.5=<t=<3
t2=0.5:0.1:3;
y2=0.3*exp(-t2).*(exp(t2)-2*exp(-1)+exp(0.5));
%trito tmhma , 3=<t=<10
t3=3:0.1:10;
y3=0.3*exp(-t3)*(exp(0.5)-2*exp(-1)+exp(3));
%sunenwsh dianusmatwn xronou
t=[t1 t2 t3];
%sunenwsh dianusmatwn synarthshs y(t)
y=[y1 y2 y3];
figure(7);
plot(t,y);
grid;



%entolh conv
tt1=-1:0.01:0.5;
tt2=0.5+0.01:0.01:3;
tt3=3+0.01:0.01:9;
xx=[0.6*ones(size(tt1)) 0.3*ones(size(tt2)) zeros(size(tt3))];
hh=exp(-[tt1 tt2 tt3]).*heaviside([tt1 tt2 tt3]);
yy=conv(xx,hh)*0.01;
figure(8);
plot(-2:0.01:18, yy);



tx=-2:0.01:2;
ty=-4:0.01:4;
x=0.8*8*rectpuls(tx,2);
y=0.5*8*rectpuls(ty,4);
figure(1);
plot(tx,x,ty,y);
grid;
xlabel('\tau');
axis([-10 10 -1 8]);
title('sunarthseis palmwn x kai y');
gtext('x(\tau)');
gtext('y(\tau)');s

figure(2);
plot(conv(x,y));
xlabel('\tau');
title('suneliksh palmwn x kai y');
gtext('h(\tau)');

E1=trapz(x)
E2=trapz(y)
E3=E1*E2

E4=trapz(conv(x,y))