function eblok = wblok(i,j,arrE)
[m,n]=size(arrE);

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

startp(2)=j*divj+1; %pixel blok
endp(2)=(j+1)*divj; %pixel blok

w=arrE(startp(1):endp(1),startp(2):endp(2)); %ambil array nilai wavelet pada blok
eblok=sum(sum(w))/(sizeblok);
end

