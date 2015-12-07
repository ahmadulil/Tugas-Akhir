[m,n,l]=size(read(vfire2,1));
divi=m/16;
divj=n/16;
sizeblok=divi*divj;
rgb=read(vfire2,31);
threshd=sizeblok/8;
waveblok=zeros(16,16);
actblok=zeros(16,16);
for i=0:15
        for j=0:15 %pembagian menjadi 16 blok
            startp=[i*divi+1;j*divj+1]; %pixel blok
            endp=[(i+1)*divi;(j+1)*divj]; %pixel blok
            startp=uint8(startp);
            endp=uint8(endp);
            waveblok(i+1,j+1)=threshwblok(threshwave+4*stdwave,rgb,startp,endp); %hitung nilai wblok
             
             if (sum(sum(fire2{31}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                 actblok(i+1,j+1)=1; %penanda label 
             end
            
        end
end
% probwave=threshwblok(threshwave+3*stdwave,read(vfire2,31),)