function out = nilaiflickblokpervideo(min,max,video,label)
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
            
            fblok(i+1,j+1)=Flickblok(30,k,allprob,i,j);
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
            end
        end
    end
    hasil{k}=fblok.*actblok;
end
out=hasil;
end