coba1=zeros(length(video1),256);
coba2=zeros(length(video2),256);
coba3=zeros(length(video3),256);
for i=31:length(video1)
     coba1(i,:)=reshape(video1{i},[],1)';
end
for i=31:length(video2)
     coba2(i,:)=reshape(video2{i},[],1)';
end
for i=31:length(video3)
     coba3(i,:)=reshape(video3{i},[],1)';
end
coba=[coba1;coba2;coba3];
nonminus=coba(coba~=0);
minimum=min(nonminus);
stda=std(nonminus);