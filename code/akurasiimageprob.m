function akurasi = akurasiimageprob(min,max)
load trainfirekmeans.mat
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\buat testing threshold ori\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\buat testing threshold ori\',srcFiles(i).name);
    img{i}=imread(filename);
%     label{i}=im2bw(imread(filename),0.9);
    prob{i} = threshprobimgbaru(model,min,max,img{i});
% %     hasil{i}=prob{i}.*label{i};
%     Nhasil{i}=prob{i}.*~label{i};
end

srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\buat testing threshold label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\buat testing threshold label\',srcFiles(i).name);
    img{i}=imread(filename);
    label{i}=im2bw(imread(filename),0.9);
    
    sumT=(sum(sum(label{i}==1))); %hitung jumlah prob api yang benar
    sumF=(sum(sum(label{i}==0))); %hitung jumlah prob api yang benar
    
    TP=prob{i}.*label{i}; %hitung jumlah prediksi dengan benar yaitu api jadi api
    TN=~prob{i}.*~label{i}; %hitung jumlah prediksi dengan benar yaitu bukan jadi bukan api     
    
    PF=uint8(prob{i});
    LF=uint8(label{i});
    PP=uint8(prob{i});
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
    
    akurasi(i).hasil=prob{i};
end

out=akurasi;
end

