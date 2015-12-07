for i=1:length(prob1)
     coba1(i,:)=reshape(prob1{i},[],1)';
end
for i=1:length(prob2)
     coba2(i,:)=reshape(prob2{i},[],1)';
end
for i=1:length(prob3)
     coba3(i,:)=reshape(prob3{i},[],1)';
end
coba=[coba1;coba2;coba3];
nonminus=coba(coba~=0);
minimum=min(nonminus);
stda=std(nonminus);
