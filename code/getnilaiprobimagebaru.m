load trainfirekmeans.mat
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\Train image\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\Train image\',srcFiles(i).name);
%     img{i}=imread(filename);
%     label{i}=im2bw(imread(filename),0.9);
%     prob{i} = fireprob4(model,img{i});
%     hasil{i}=prob{i}.*label{i};
    Nhasil{i}=prob{i}.*~label{i};
end

% save('nilaiprobimgfireimage1.mat','prob','hasil');