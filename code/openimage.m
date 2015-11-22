srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\3\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\3\',srcFiles(i).name);
    img{i} = imread(filename);
    img{i} = im2bw(img{i},0.9);
end
save('video3.mat','img');
