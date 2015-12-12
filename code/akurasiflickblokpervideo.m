function out = akurasiflickblokpervideo(thresh,min,max,video,label)
load trainfirekmeans.mat;

[m,n,l]=size(read(video,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8;
% threshprobimgbaru(model,min,max,img)
for k=1:length(label)
    allprob(:,:,k)=threshprobimgbaru(model,min,max,read(video,k)); %ngitung arre dlu biar cepet
end

for k=31:length(label)
    actblok=zeros(16,16); %blok aktif
    fblok=zeros(16,16); %fblok aktif 
    for i=0:15
        for j=0:15
            startp=[i*divi+1;j*divj+1];
            endp=[(i+1)*divi;(j+1)*divj];
%             Flickblok(nframe,curentframe,allprob,i,j)
            fblok(i+1,j+1)=threshflickblok(thresh,30,k,allprob,i,j);
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
            end
        end
    end
    sumF=sum(sum(actblok==0)); %hitung jumlah label blok bukan api
    sumT=sum(sum(actblok==1)); %hitung jumlah label blok api
    
    WF=fblok;
    AF=actblok;
    WP=fblok;
    AP=actblok;
    
    TP=bsxfun(@times,actblok,fblok); %hitung jumlah blok api terdeteksi dengan benar
    TN=bsxfun(@times,~actblok,~fblok); %hitung true negative
    
    WP(WP==1)=10; %tanda blok api pada prediksi
    AP(AP==0)=10; %tanda blok bukan api pada label
    
    WF(WF==0)=10; %tanda blok bukan api pada prediksi
    AF(AF==1)=10; %tanda blok api pada label
    
    TNR=sum(sum(TN))/sumF; %TNR label bukan api jadi api
    FPR=sum(sum(WP==AP))/sumF; %FPR label bukan api jadi api
    FNR=sum(sum(WF==AF))/sumT; %FNR label api jadi bukan api
    TPR=sum(sum(TP))/sumT; %TPR label api jadi api 
    LRP=TPR/FPR; %like hood ratio positive
    LRN=FNR/TNR; %like hood ratio negative
    DOR=LRP/LRN; %Diagnostic odds ratio
    
    akurasi(k).TPR=TPR;
    akurasi(k).TNR=TNR;
    akurasi(k).FNR=FNR;
    akurasi(k).FPR=FPR;
    akurasi(k).LRP=LRP;
    akurasi(k).LRN=LRN;
    akurasi(k).DOR=DOR;
    
    akurasi(k).hasil=fblok;
end
out=akurasi;
end

