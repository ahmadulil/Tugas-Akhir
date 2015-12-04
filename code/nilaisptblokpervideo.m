function out = nilaisptblokpervideo( video,label )
[m,n,l]=size(read(video,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8; %threshold 12,5 % aktif fire
for k=1:length(label)
    [eblok,arrEblok(:,:,k)]=wblok(read(video,k),[1 1],[m n]); %ngitung arre dlu biar cepet
end
 

for k=31:length(label)
    actblok=zeros(16,16);
    sptfblok=zeros(16,16);
    for i=0:15
        for j=0:15 %pembagian menjadi 16 blok
            startp=[i*divi+1;j*divj+1]; %pixel blok
            endp=[(i+1)*divi;(j+1)*divj]; %pixel blok
            
            startp=uint8(startp);
            endp=uint8(endp);
            
            sptfblok(i+1,j+1)=sptblok(video,30,k,startp,endp,arrEblok); %hitung nilai wblok
            
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1; %penanda label 
            end
            
        end
    end
    hasil{k}(:,:)=bsxfun(@times,actblok,sptfblok);
end
out=hasil;
end

