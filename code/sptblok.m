function vblok = sptblok(video,nframe,ncurent,startp,endp)
% sum=0;
% nsum=0;
    % for i=startf(1):endf(1)
        % for j=startf(2):endf(2)
            % sum=sum+1;
            % nsum=nsum+spt(nframe,ncurent,i,j,arrE,curentE);
        % end
    % end
startf=ncurent-nframe+1;
for i=startf:ncurent
	[arrE(:,:,i),arrblok(i)]=wblok(read(video,i),startp,endp);
	v(:,:)=var(arrE(:,:,i));
end
[n1,n2]=size(v);
vblok=sum(sum(v))/(n1+n2);
end

