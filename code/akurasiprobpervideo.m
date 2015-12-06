function out = akurasiprobpervideo(thresh,video,label)

for i=1:length(label)
    rgb=read(video,i);
    probimg(:,:)=threshprob(thresh,rgb); %hitung prediksi prob colour video 
    sumT=(sum(sum(label{i}==1))); %hitung jumlah prob api yang benar
    sumF=(sum(sum(label{i})==0)); %hitung jumlah prob api yang benar
    
    TP=bsxfun(@times,probimg,label{i}); %hitung jumlah prediksi dengan benar yaitu api jadi api
    TN=bsxfun(@times,~probimg,~label{i}); %hitung jumlah prediksi dengan benar yaitu bukan jadi bukan api     
    
    PF=uint8(probimg);
    LF=uint8(label{i});
    PP=uint8(probimg);
    LP=uint8(label{i});
    
    PP(PP==1)=10; %tanda pixel api pada prediksi
    LP(LP==0)=10; %tanda pixel bukan api pada label
%     
    PF(PF==0)=10; %tanda pixel bukan api pada prediksi
    LF(LF==1)=10; %tanda pixel api pada label
    
    TNR=sum(sum(TN))/sumF; %TNR label bukan api jadi api
    FPR=sum(sum(PP==LP))/sumF; %FPR label bukan api jadi api
    FNR=sum(sum(PF==LF))/sumT; %FNR label api jadi bukan api
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
    
    akurasi(i).hasil=probimg;
    
end
out=akurasi;
end

