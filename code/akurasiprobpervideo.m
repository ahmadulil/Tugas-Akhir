function out = akurasiprobpervideo(thresh,video,label)

for i=1:length(label)
    rgb=read(video,i);
    probimg(:,:)=threshprob(thresh,rgb);
    
    jumNP=sum(sum(label{i}==0));%hitung jumlah pixel bukan fire colour
    
    probimg=uint8(probimg);
    label{i}=uint8(label{i});
    
    probimg(probimg==1)=20; %tanda terdeteksi fire colour
    label{i}(label{i}==0)=20; %label yang bukan fire colour
    sumP=sum(sum(probimg==label{i})); %hitung bukan api yang terdeteksi sebagai api
    
    akurasi(i)=sumP/jumNP; %akurasi false positive
end
out=akurasi;

end

