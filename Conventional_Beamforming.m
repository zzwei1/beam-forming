clear all;close all;clc;
source_number=2;%信元数
sensor_number=16;%阵元数
N_x=1024; %信号长度
snapshot_number=N_x;%快拍数
w=[pi/4 pi/6].';%信号频率
l=((2*pi*1500)/w(1)+(2*pi*1500)/w(2))/2;%信号波长  
d=0.5*l;%阵元间距
snr=15;%信噪比

source_doa=[-5 5];%两个信号的入射角度
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%阵列流型

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%仿真信号
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%加了高斯白噪声后的阵列接收信号

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%线阵的搜索范围为-90~90度
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('方位角/°','FontSize',15);
ylabel('空间谱/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;
snr=15;%信噪比
source_doa=[-5 2];%两个信号的入射角度
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%阵列流型

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%仿真信号
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%加了高斯白噪声后的阵列接收信号

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%线阵的搜索范围为-90~90度
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('方位角/°','FontSize',15);
ylabel('空间谱/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;
snr=15;
source_doa=[-5 1];%两个信号的入射角度
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%阵列流型

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%仿真信号
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%加了高斯白噪声后的阵列接收信号

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%线阵的搜索范围为-90~90度
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('方位角/°','FontSize',15);
ylabel('空间谱/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;

snr=10;%信噪比
source_doa=[-5 2];%两个信号的入射角度
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%阵列流型

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%仿真信号
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%加了高斯白噪声后的阵列接收信号

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%线阵的搜索范围为-90~90度
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('方位角/°','FontSize',15);
ylabel('空间谱/dB','FontSize',15);
set(gca,'FontSize',11);
grid on
