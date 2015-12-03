function vblok = sptblok(video,nframe,ncurent,startp,endp)
% sum=0;
% nsum=0;
    % for i=startf(1):endf(1)
        % for j=startf(2):endf(2)
            % sum=sum+1;
            % nsum=nsum+spt(nframe,ncurent,i,j,arrE,curentE);
        % end
    % end
%     [eblok,Ew] = wblok(img,startp,endp)
startf=ncurent-nframe+1;
for i=startf:ncurent
	[arrblok(i),arrE(:,:,i)]=wblok(read(video,i),startp,endp);
end
v(:,:)=var(arrE(:,:,:));
[n1,n2]=size(v);
vblok=sum(sum(v))/(n1+n2);
end

