function fit=fitness(lamda, beta)
    global beta_ant;
    c1 = 0.5176; c2= 116; c3= 0.4; c4=5; c5=21; c6=0.0068;
    beta=beta*(pi/180);%paso beta a radianes
    r=40; %radio normal para una turbina de 1.5 MW
    
    cp=zeros(1,length(beta));
    for i=1:length(beta)
        lamda_i=1/((1/(lamda+0.08*beta(i)))-0.035/(beta(i)^3+1));
        cp(i)=c1*(c2/lamda_i-c3*beta(i)-c4)*exp(-c5/lamda_i)+c6*lamda;
    end
    fit=abs(cp);   
end




                 
             
        
        
        


