function Fblok = Flickblok(thresh,nframe,curentframe,video,startpx,endpx)

    sumf=0;
    sum=0;

imgc=read(video,curentframe);
cprob(:,:)=threshprob(21,imgc(startpx(1):endpx(1),startpx(2):endpx(2)));
bakground(thresh,nframe,video,curentframe)
bakgr=bakground(25,20,video,curentframe);

m=endpx(1)-startpx(1)+1
n=endpx(2)-startpx(2)+1

nsum(:,:)=zeros(m,n);
for i=curentframe-nframe:curentframe-1
    ibakgr=bakground(25,20,video,i);
    iprob(:,:)=threshprob(21,imgc(startpx(1):endpx(1),startpx(2):endpx(2)));
    flikbr=bakgr-ibakgr;
    flickprob=cprob-iprob;
    hasil=or(flikbr,flickprob);
    nsum(:,:)=nsum(:,:)+(hasil);
end
end

