function out = akurasibakgroundpervideo(thresh,v,label)
    
    for i=21:length(label)
        xfor=bakground(thresh,20,v,i); %hitung moving detection
        
        sumF=sum(sum(label{i}==0)); %hitung jumlah label blok bukan api
        sumT=sum(sum(label{i}==1)); %hitung jumlah label blok api
        
        XF=uint8(xfor);
        LF=uint8(label{i});
        XP=uint8(xfor);
        LP=uint8(label{i});
        
        TP=bsxfun(@times,xfor,label{i}); %hitung prediksi moving dengan benar
        TN=bsxfun(@times,~xfor,~label{i}); %hitung prediksi moving dengan benar
        
        XP(XP==1)=10; %tanda blok api pada prediksi
        LP(LP==0)=10; %tanda blok bukan api pada label

        XF(XF==0)=10; %tanda blok bukan api pada prediksi
        LF(LF==1)=10; %tanda blok api pada label
              
        TNR=sum(sum(TN))/sumF; %TNR label bukan api jadi api
        FPR=sum(sum(XP==LP))/sumF; %FPR label bukan api jadi api
        FNR=sum(sum(XF==LF))/sumT; %FNR label api jadi bukan api
        TPR=sum(sum(TP))/sumT; %TPR label api jadi api 
        LRP=TPR/FPR; %like hood ratio positive
        LRN=FNR/TNR; %like hood ratio negative
        DOR=LRP/LRN; %Diagnostic odds ratio

        akurasi(i).TPR=TPR;
        akurasi(i).TNR=TNR;
        akurasi(i).FNR=FNR;
        akurasi(i).FPR=FPR;
        akurasi(i).LRP=LRP;
        akurasi(i).LRN=LRN;
        akurasi(i).DOR=DOR;
    
        akurasi(i).hasil=xfor;

    end
    out=akurasi;
end

