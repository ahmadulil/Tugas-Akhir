for i=1:length(prob1)
     coba(i,:)=reshape(prob1{i},[],1)';
end
nonminus=coba(coba~=0);
minimum=min(nonminus);
stda=std(nonminus);

% nonminus=double((coba(coba~=0)));
% min=std(nonminus);
% coba(1,:)=reshape(prob1{i},[],1)';