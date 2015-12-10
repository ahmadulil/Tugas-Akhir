hasil1=[];
for i=1:length(hasil)
     coba=hasil{i}(hasil{i}~=0);
     hasil1=[hasil1;coba];
end
% coba=[coba1;coba2;coba3];
% nonminus=coba1(coba1~=0);
% minimum=min(nonminus);
% stda=std(nonminus);
mina=min(hasil1);
stda=std(hasil1);
