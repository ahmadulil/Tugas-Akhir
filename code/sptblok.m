function vblok = sptblok(video,nframe,ncurent,i,j,arrEblok)
[m,n,l]=size(arrEblok);

divi=m/16;
divj=n/16;
if mod(i,2)
    divi=floor(divi);
else
    divi=ceil(divi);
end

if mod(j,2)
    divj=floor(divj);
else
    divj=ceil(divj);
end

sizeblok=divi*divj;

startf=ncurent-nframe;

startp=[i*divi+1;j*divj+1]; %pixel blok
endp=[(i+1)*divi;(j+1)*divj]; %pixel blok
arrE=arrEblok(startp(1):endp(1),startp(2):endp(2),startf:ncurent-1);

v(:,:)=var(arrE(:,:,:));
[n1,n2]=size(v);
vblok=sum(sum(v))/(n1*n2);
end

