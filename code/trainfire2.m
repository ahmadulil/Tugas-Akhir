clc;
clear;
model=zeros(1,3);
abc=zeros(1,3);
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\train image touch 2\*.jpg');  % the folder in which ur images exists
for i = 1 : 1
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\train image touch 2\',srcFiles(i).name);
    img{i} = imread(filename);
    ab=reshape(img{i}(:,:,:),[],3);
    model=unique([model;ab]);
end
 save('trainfire.mat','model');
