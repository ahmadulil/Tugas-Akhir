function out=tesframetwaveblok(video,label)


divi=240/16;
divj=320/16;
sizeblok=divi*divj;

actblok=zeros(16,16);
waveblok=zeros(16,16);
threshd=sizeblok/8;

for k=1:length(label)
    rgb=read(video,k);
    for i=0:15
        for j=0:15
            startp=[i*divi+1;j*divj+1];
            endp=[(i+1)*divi;(j+1)*divj];

            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
                [waveblok(i+1,j+1),ew]=wblok(rgb,startp,endp);
            end
        end
    end
    hasil{k}(:,:)=bsxfun(@times,actblok,waveblok);
end
out=hasil;
