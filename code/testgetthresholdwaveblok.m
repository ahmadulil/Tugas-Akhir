for i=1:length(video1)
     coba(i,:)=reshape(video1{i},[],1)';
end

nonminus=coba(coba~=0);
minimum=min(nonminus);
stda=std(nonminus);