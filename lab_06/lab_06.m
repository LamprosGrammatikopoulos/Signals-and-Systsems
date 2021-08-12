%1
RC=0.001;
w=0:50:5000;
H=(1/RC)./(j*w+1/RC);
Hmetro=abs(H);
Hfash=180*angle(H)/pi;
figure(1);
subplot(211);
plot(w,Hmetro);
xlabel('Frequency, rad/sec');
ylabel('|H|');
subplot(212);
plot(w,Hfash);
xlabel('Frequency, rad/sec');
ylabel('angle H, degrees');

%values of H for several values of frequency (w - rad/sec)
%w=0
index=find(w==0);
abs(H(index))
180*angle(H(index))/pi
%w=1000
index=find(w==1000);
abs(H(index))
180*angle(H(index))/pi
%w=3000
index=find(w==3000);
abs(H(index))
180*angle(H(index))/pi


%2
RC=0.001;
t=-0.1:0.2/1000:0.1;
w1=100;
w2=3000;
Hw1=(1/RC)./(j*w1+1/RC);
Hw2=(1/RC)./(j*w2+1/RC);
x=cos(w1*t)+cos(w2*t);
y=abs(Hw1)*cos(w1*t+angle(Hw1))+abs(Hw2)*cos(w2*t+angle(Hw2));
figure(2);
subplot(211);
plot(t,x);
xlabel('time (sec)')
ylabel('x(t)');
subplot(212);
plot(t,y);
xlabel('time (sec)')
ylabel('y(t)');







