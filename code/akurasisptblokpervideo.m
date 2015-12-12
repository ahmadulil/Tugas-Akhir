function out=akurasisptblokpervideo(thresh,video,label)
[m,n,l]=size(read(video,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8; %threshold 12,5 % aktif fire
for k=1:length(label)
    arrEblok(:,:,k)=hitungwavelet(read(video,k)); %ngitung arre dlu biar cepet
end


for k=31:length(label)
    actblok=zeros(16,16);
    sptfblok=zeros(16,16);
    for i=0:15
        for j=0:15 %pembagian menjadi 16 blok
            startp=[i*divi+1;j*divj+1]; %pixel blok
            endp=[(i+1)*divi;(j+1)*divj]; %pixel blok
            
            
%             function out = threshsptblok(thresh,video,nframe,ncurent,startp,endp,arrEblok)
            sptfblok(i+1,j+1)=threshsptblok(thresh,30,k,i,j,arrEblok); %hitung nilai wblok
            
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1; %penanda label 
            end
            
        end
    end
    sumF=sum(sum(actblok==0)); %hitung jumlah label blok bukan api
    sumT=sum(sum(actblok==1)); %hitung jumlah label blok api
    
    WF=sptfblok;
    AF=actblok;
    WP=sptfblok;
    AP=actblok;
    
    TP=bsxfun(@times,actblok,sptfblok); %hitung jumlah blok api terdeteksi dengan benar
    TN=bsxfun(@times,~actblok,~sptfblok); %hitung true negative
    
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
    
    akurasi(k).hasil=sptfblok;
end
out=akurasi;
end

