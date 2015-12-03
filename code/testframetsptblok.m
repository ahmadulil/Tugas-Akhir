function out = testframetsptblok( video,label )


divi=240/16;
divj=320/16;
sizeblok=divi*divj;

actblok=zeros(16,16);
sptblokf=zeros(16,16);
threshd=sizeblok/8;

 
% function vblok = sptblok(video,nframe,ncurent,startp,endp)

for k=31:length(label)
%     rgb=read(video,k);
    for i=0:15
        for j=0:15
            startp=[i*divi+1;j*divj+1];
            endp=[(i+1)*divi;(j+1)*divj];

            if (sum(sum(label{k}(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                actblok(i+1,j+1)=1;
                sptblokf(i+1,j+1)=sptblok(video,30,k,startp,endp);
            end
        end
    end
    hasil{k}(:,:)=bsxfun(@times,actblok,sptblokf);
end
out=hasil;

end

