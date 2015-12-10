% load trainfire.mat
% for i=1:3
%     label{i}=im2bw(label{i});
% end
% for i=1:3
%     for j=1:3
%         probimg=fireprob4(model,img{i});
%         hasil{i}=probimg.*label{i};
%     end
% end
suma=0;
for i=1:3
    suma=suma+1;
    cobaa(suma,:)=reshape(hasil{i},[],1)';
end
cobaa=cobaa(coba~=0);
mina=min(coba);
stda=std(coba);

