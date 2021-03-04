Pnom = 2e6;
Kp = 5;
Ki = 25;
Upper_Limit = 45;
Lower_Limit = 0;

%% Parametros modelo nuevo 
Pnom1 = 2e6;
r= 90;
A= pi*r^2;
rho= 1.29;
n = 100; %= velocidad del generador/ velocidad turbina eolica

c1= 0.5176;
c2=116;
c3=0.4;
c4= 5;
c5= 21;
c6= 0.0068;

ta=[0,20, 40,  60, 80, 100,110,130]*10;
wa=[3, 7, 11, 13, 15, 22,24, 16];

%% Control supervisor

P_NOM=1;
w_min=6;
w_max=26;
wmin=4;

%% Leo wind data de excel

filename= 'wind_data_2.xlsx';
wind_d= xlsread(filename, 'C2:C434')';
%time = xlsread(filename, 'D2:D434')';
time=0:600:(432*600);
ts= timeseries(wind_d, time);
figure()
plot(ts)
title('Velocida del viento.')
xlabel('Tiempo (s)')
ylabel('Velocidad (m/s)')



