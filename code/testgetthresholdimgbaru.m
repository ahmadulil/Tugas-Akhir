hasil1=[];
hasil2=[];
for i=1:length(hasil)
     coba1=hasil{i}(hasil{i}~=0);
     coba2=Nhasil{i}(Nhasil{i}~=0);
     hasil1=[hasil1;coba1];
     hasil2=[hasil2;coba2];
end
% coba=[coba1;coba2;coba3];
% nonminus=coba1(coba1~=0);
% minimum=min(nonminus);
% stda=std(nonminus);
fire.mina=min(hasil1);
fire.maxa=max(hasil1);
fire.meana=mean(hasil1);
fire.stda=std(hasil1);

Nfire.mina=min(hasil2);
Nfire.maxa=max(hasil2);
Nfire.meana=mean(hasil2);
Nfire.stda=std(hasil2);
