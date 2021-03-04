function [b]=s_annealing(lamda, beta)
    global beta_ant;
    flag=1;
    T=0.5;
    it=1;
    while flag==1
        
        r = -2 + (2+2)*rand(10,1);
        r=abs(r+beta_ant); %genero diez vecinos aleatorios en el interval (beta+2, beta-2)
        for i=1:length(r)
            if r(i)>20
                r(i)=r(i)-20;
            end
        end
        beta_n= r(randi(10)); %selecciono de forma aleatoria al nuevo beta
        %calculo cp para el valor de beta seleccionado
        f_b=fitness(lamda, beta_ant);
        f_bn=fitness(lamda, beta_n);
        
        
        DE=f_bn-f_b;
        p=exp(DE/T);
        r_x=rand;
        if p>rand
            beta=beta_n;
            
            %Si beta nuevo tiene cp mayor a beta actual, entonces lo elijo
            %si beta nuevo tiene cp menor a beta actual, lo elijo con
            %probabilidad p
        end
        T=T-0.00001;
        
        if T<0.00001
            flag=0;
        end
        %hist(it, 1)= beta
        %hist(it, 2)= fitness(lamda, beta)
        it=it+1;
    end
    beta_ant=beta;
    b=beta;
    
    
end
    