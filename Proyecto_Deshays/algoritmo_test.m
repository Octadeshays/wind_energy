global beta_ant
beta_ant=0;
n=100; 
% Genero lamda y beta random
 lamda =abs( 4 + (10)*rand(n,1));
 
 beta = abs( 0 + (20)*rand(n,1));
 
 % Calculo Cp pa ra cada convinación
 Cp_a= zeros(1, n);
 for i=1:n
     Cp_a(i) = fitness(lamda(i), beta(i));
 end
 
 % Calculo nuevos beta con s_annealing
 betan=zeros(1,n);
 for i =1:n
     beta_ant=beta(i);
     betan(i) = s_annealing(lamda(i), beta(i));
 end
 
 %Calculo Cp para los beta nuevos:
 Cp_n= zeros(1, n);
 for i=1:n
     Cp_n(i) = fitness(lamda(i), betan(i));
 end
 
 %Calculo porcentaje promedio de diferencia entre Cp nuevo y viejo
 %11.5785
dif=zeros(1,n);
for i =1:n
    dif(i)=(Cp_n(i)-Cp_a(i))/Cp_a(i);
    dif(i)=dif(i)*100;
end
mean_dif= sum(dif)/n