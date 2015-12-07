divi=240/8;
divj=320/8;
sizeblok=divi*divj;

threshd=sizeblok/4; %threshold 12,5 % aktif fire

for k=1:1
    for i=0:7
        for j=0:7 %pembagian menjadi 16 blok
            startp=[i*divi+1;j*divj+1] %pixel blok
            endp=[(i+1)*divi;(j+1)*divj]%pixel blok
            start=uint8(startp)/2
            enda=uint8(endp)/2
        end
    end
end