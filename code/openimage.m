%nonfire 1
srcFiles = dir('video label\nonfire 1\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 1\label\',int2str(i),'.jpg');
    nonfire1{i} = imread(filename);
    nonfire1{i} = im2bw(nonfire1{i},0.9);
end

%nonfire 2 C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\code\video label\nonfire 2
srcFiles = dir('video label\nonfire 2\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 2\',int2str(i),'.jpg');
    nonfire2{i} = imread(filename);
    nonfire2{i} = im2bw(nonfire2{i},0.9);
end

%nonfire 3
srcFiles = dir('video label\nonfire 3\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 3\',int2str(i),'.jpg');
    nonfire3{i} = imread(filename);
    nonfire3{i} = im2bw(nonfire3{i},0.9);
end

%fire 1
srcFiles = dir('video label\fire 1\Label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 1\Label\',int2str(i),'.jpg');
    fire1{i} = imread(filename);
    fire1{i} = im2bw(fire1{i},0.9);
end

%fire 2
srcFiles = dir('video label\fire 2\ibw\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 2\ibw\',int2str(i),'.jpg');
    fire2{i} = imread(filename);
    fire2{i} = im2bw(fire2{i},0.9);
end
%fire 3 C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\code\video label\fire 3\new label
srcFiles = dir('video label\fire 3\new label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 3\new label\',int2str(i),'.jpg');
    fire3{i} = imread(filename);
    fire3{i} = im2bw(fire3{i},0.9);
end
%fire 4 C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\code\video label\fire 3\new label
srcFiles = dir('video label\fire 4\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 4\label\',int2str(i),'.jpg');
    fire4{i} = imread(filename);
    fire4{i} = im2bw(fire4{i},0.9);
end

 %fire ciri
srcFiles = dir('video label\ciri 1\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 1\',int2str(i),'.jpg');
    ciri1{i} = imread(filename);
    ciri1{i} = im2bw(ciri1{i},0.9);
end
%  fire ciri2
srcFiles = dir('video label\ciri 2\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 2\',int2str(i),'.jpg');
    ciri2{i} = imread(filename);
    ciri2{i} = im2bw(ciri2{i},0.9);
end
% ciri 3
srcFiles = dir('video label\ciri 3\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 3\',int2str(i),'.jpg');
    ciri3{i} = imread(filename);
    ciri3{i} = im2bw(ciri3{i},0.9);
end

save('videolabel.mat','nonfire1','nonfire2','nonfire3','fire1','fire2','fire3','fire4','ciri1','ciri2','ciri3');
