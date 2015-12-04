function vblok = sptblok(video,nframe,ncurent,startp,endp,arrEblok)

startf=ncurent-nframe+1;

startp=startp/2;
endp=endp/2;

startp=ceil(startp);
endp=ceil(endp);

arrE=arrEblok(startp(1):endp(1),startp(2):endp(2),startf:ncurent);
% for i=startf:ncurent
% 	[arrblok(i),arrE(:,:,i)]=wblok(read(video,i),startp,endp);
% end
v(:,:)=var(arrE(:,:,:));
[n1,n2]=size(v);
vblok=sum(sum(v))/(n1+n2);
end

