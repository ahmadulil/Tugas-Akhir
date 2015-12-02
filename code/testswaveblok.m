load video.mat;
load videolabel.mat;

% wblok(img,startp,endp)
divi=240/8;
divj=320/8;
sizeblok=divi*divj;
actblok=zeros(8,8);
waveblok=zeros(8,8);
threshd=sizeblok/8;
for k=1:1
    for i=0:7
        for j=0:7
            startp=[i*divi+1;j*divj+1];
            endp=[(i+1)*divi;(j+1)*divj];
            
            rgb=read(vfire2,k);
            [waveblok(i+1,j+1),ew]=wblok(rgb,startp,endp);
            sum(sum(fire2{k}(startp(1):endp(1),startp(2):endp(2))==1))
            if (sum(sum(fire1{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
            end
        end
    end
end

hasil(:,:)=bsxfun(@times,actblok,waveblok);