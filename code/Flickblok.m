function Fblok = Flickblok(thresh,nframe,curentframe,video,startpx,endpx)

    sumf=0;
    sum=0;

imgc=read(video,curentframe);
cprob(:,:)=threshprob(21,imgc(startpx(1):endpx(1),startpx(2):endpx(2)));

m=endpx(1)-startpx(1)+1
n=endpx(2)-startpx(2)+1

nsum(:,:)=zeros(m,n);
for i=curentframe-nframe:curentframe-1
    iprob(:,:)=threshprob(21,imgc(startpx(1):endpx(1),startpx(2):endpx(2)));
    nsum(:,:)=nsum(:,:)+(iprob~=cprob);
    
end
end

