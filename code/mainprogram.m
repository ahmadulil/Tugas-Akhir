function [out,out1] = mainprogram(video)
tic
load testskema1.mat;
load trainfire.mat
[m,n,l]=size(read(video,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8;    
for k=1:video.NumberOfFrame
    [eblok,arrEblok(:,:,k)]=wblok(read(video,k),[1 1],[m n]); %ngitung arre dlu biar cepet
    end
    for k=31:32
        waveblok=zeros(16,16);
        sptfblok=zeros(16,16);
        img=read(video,k);
        foreground=bakground(25,20,video,k);
        probimg=threshprob(model,thresholdprob,read(video,k));
        for i=0:15
            for j=0:15 %pembagian menjadi 16 blok
                startp=[i*divi+1;j*divj+1]; %pixel blok
                endp=[(i+1)*divi;(j+1)*divj]; %pixel blok %hitung nilai wblok
                aktif=probimg.*foreground;
                 if (sum(sum(probimg(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                    actblok(i+1,j+1)=1; %penanda label 
                    sptfblok(i+1,j+1)=threshsptblok(thresholdspt+stdspt,video,30,k,i,j,arrEblok);
                    waveblok(i+1,j+1)=threshwblok(thresholwblok+stdwblok,img,startp,endp);
                 end
            end
        end
        
        wave{k}=waveblok;
        sptf{k}=sptfblok;
    end
    out=wave;
    out1=sptf;
    toc
end

