function out=nilaiwblokpervideo(video,label)
[m,n,l]=size(read(video,1));
divi=m/16;
divj=n/16;
sizeblok=divi*divj;

actblok=zeros(16,16);
waveblok=zeros(16,16);
threshd=sizeblok/8;

for k=1:length(label)
    arrEblok(:,:,k)=hitungwavelet(read(video,k)); %ngitung arre dlu biar cepet
end

for k=1:length(label)
    rgb=read(video,k);
    for i=0:15
        for j=0:15
            startp=[i*divi+1;j*divj+1];
            endp=[(i+1)*divi;(j+1)*divj];
            
            waveblok(i+1,j+1)=wblok(i,j,arrEblok(:,:,k));
            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
            end
        end
    end
    hasil{k}(:,:)=bsxfun(@times,actblok,waveblok);
end
out=hasil;
