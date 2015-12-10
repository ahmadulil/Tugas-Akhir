function vblok = sptblok(nframe,ncurent,i,j,arrEblok)
[m,n,l]=size(arrEblok);

divi=m/8;
divj=n/16;

if mod(i,2)
    startp(1)=divi*floor(i/2)+8;
    endp(1)=startp(1)+7;
    sizedivi=8;
else
    startp(1)=divi*i/2+1;
    endp(1)=startp(1)+6;
    sizedivi=7;
end

sizeblok=sizedivi*divj;
startf=ncurent-nframe;

startp(2)=j*divj+1; %pixel blok
endp(2)=(j+1)*divj; %pixel blok

arrE=arrEblok(startp(1):endp(1),startp(2):endp(2),startf:ncurent-1); %ambil array nilai wavelet pada blok
v(:,:)=var(arrE(:,:,:)); %hitung variansi 
% size(v)
[n1,n2]=size(v);
vblok=sum(sum(v))/(sizeblok);
end

