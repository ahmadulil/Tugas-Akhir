function out = akurasiwblokpervideo(thresh,video,label)
[m,n,l]=size(read(video,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8; %threshold 12,5 % aktif fire

for k=1:length(label)
    rgb=read(video,k);
    actblok=zeros(16,16);
    waveblok=zeros(16,16);
    for i=0:15
        for j=0:15 %pembagian menjadi 16 blok
            startp=[i*divi+1;j*divj+1]; %pixel blok
            endp=[(i+1)*divi;(j+1)*divj]; %pixel blok
            startp=uint8(startp);
            endp=uint8(endp);
            waveblok(i+1,j+1)=sptblok(thresh,rgb,startp,endp); %hitung nilai wblok
            
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1; %penanda label 
            end
            
        end
    end
    sumF=sum(sum(actblok==0)); %hitung jumlah label blok bukan api
    sumT=sum(sum(actblok==1)); %hitung jumlah label blok api
    
    NF=waveblok;
    FL=actblok;
    
    
    PT=bsxfun(@times,actblok,waveblok); %hitung jumlah blok api terdeteksi dengan benar
    
    NF(NF==1)=10; %tanda blok api pada prediksi
    FL(FL==0)=10; %tanda blok bukan api pada label
    
    FP=sum(sum(NF==FL))/sumF; %hitung blok bukan api jadi api
    TP=sum(sum(PT))/sumT;
    
    akurasi(k)=TP/FP; %hitung akurasi false positive
end
out=akurasi;
end

