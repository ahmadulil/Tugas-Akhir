% for i=1:length(prob1)
%      coba(i,:)=reshape(prob1{i},[],1)';
% end
% nonminus=coba(coba~=0);
nonminus=double((coba(coba~=0)));
min=std(nonminus);
% coba(1,:)=reshape(prob1{i},[],1)';