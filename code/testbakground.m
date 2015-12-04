function akurasi = akurasibakgroundpervideo(thresh,v,label)
    
    for i=21:length(label)
        xfor=bakground(thresh,20,v,i); %hitung moving detection
        
        xfor=uint8(xfor);
        label{i}=uint8(label{i});
        
        xfor(xfor==0)=20; %tandai substraction yang tidak bergerak
        sumNM=sum(sum(label{i}==0)); %hitung jumlah label tidak bergerak
        
        label{i}(label{i}==1)=20; %tandai label yang seharusnya bergerak
        
        sumF=sum(sum(label{i}==xfor));
        
        accur(i)=sumF/sumNM;
    end
    akurasi=accur;
end

