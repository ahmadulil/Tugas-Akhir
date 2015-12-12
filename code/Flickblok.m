function Fblok = Flickblok(nframe,curentframe,allprob,i,j)
load trainfirekmeans.mat;

[m,n,l]=size(allprob);

divi=m/16; %pembagian blok
divj=n/16; %pembagian blok
sizeblok=divi*divj;

startp=[i*divi+1;j*divj+1]; %pixel blok
endp=[(i+1)*divi;(j+1)*divj]; %pixel blok

cprob=allprob(startp(1):endp(1),startp(2):endp(2),curentframe); %ambil prob curent frame

nsum(:,:)=zeros(divi,divj);
for i=curentframe-nframe:curentframe-1
    iprob=allprob(startp(1):endp(1),startp(2):endp(2),i); %ambil prob ke i
    hasil=xor(iprob,cprob); %membadingkan prob curentframe dengan prob ke i (temporal ke belakang)
    nsum=nsum+hasil; %
end
    F=(2.^nsum) - 1;
    Fblok=sum(sum(F))./sizeblok;
end

