%nonfire 1
srcFiles = dir('video label\nonfire 1\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 1\label\',srcFiles(i).name);
    nonfire1{i} = imread(filename);
    nonfire1{i} = im2bw(nonfire1{i},0.9);
end

%nonfire 2
srcFiles = dir('video label\nonfire 2\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 2\',srcFiles(i).name);
    nonfire2{i} = imread(filename);
    nonfire2{i} = im2bw(nonfire2{i},0.9);
end

%nonfire 3
srcFiles = dir('video label\nonfire 3\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\nonfire 3\',srcFiles(i).name);
    nonfire3{i} = imread(filename);
    nonfire3{i} = im2bw(nonfire3{i},0.9);
end

%fire 1
srcFiles = dir('video label\fire 1\Label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 1\Label\',srcFiles(i).name);
    fire1{i} = imread(filename);
    fire1{i} = im2bw(fire1{i},0.9);
end

%fire 2
srcFiles = dir('video label\fire 2\ibw\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 2\ibw\',srcFiles(i).name);
    fire2{i} = imread(filename);
    fire2{i} = im2bw(fire2{i},0.9);
end
%fire 3
srcFiles = dir('video label\fire 3\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\fire 3\label\',srcFiles(i).name);
    fire3{i} = imread(filename);
    fire3{i} = im2bw(fire3{i},0.9);
end

 %fire ciri
srcFiles = dir('video label\ciri 1\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 1\',srcFiles(i).name);
    ciri1{i} = imread(filename);
    ciri1{i} = im2bw(ciri1{i},0.9);
end
%  fire ciri2
srcFiles = dir('video label\ciri 2\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 2\',srcFiles(i).name);
    ciri2{i} = imread(filename);
    ciri2{i} = im2bw(ciri2{i},0.9);
end
% ciri 3
srcFiles = dir('video label\ciri 3\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('video label\ciri 3\',srcFiles(i).name);
    ciri3{i} = imread(filename);
    ciri3{i} = im2bw(ciri3{i},0.9);
end

save('videolabel.mat','nonfire1','nonfire2','nonfire3','fire1','fire2','fire3','ciri1','ciri2','ciri3');
