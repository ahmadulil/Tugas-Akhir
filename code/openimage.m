%nonfire 1
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactorynonfire_indoor_5~2\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactorynonfire_indoor_5~2\label\',srcFiles(i).name);
    nonfire1{i} = imread(filename);
    nonfire1{i} = im2bw(nonfire1{i},0.9);
end

%fire 1
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\fire_indoor_10\ibw\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\fire_indoor_10\ibw\',srcFiles(i).name);
    fire1{i} = imread(filename);
    fire1{i} = im2bw(fire1{i},0.9);
end
%fire 2
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryfire_outdoor_9\label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryfire_outdoor_9\label\',srcFiles(i).name);
    fire2{i} = imread(filename);
    fire2{i} = im2bw(fire2{i},0.9);
end
%fire 3
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryFormatFactoryfire_indoor_18\Label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryFormatFactoryfire_indoor_18\Label\',srcFiles(i).name);
    fire3{i} = imread(filename);
    fire3{i} = im2bw(fire3{i},0.9);
end

% %fire ciri
% srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryFormatFactoryfire_indoor_18\Label\*.jpg');  % the folder in which ur images exists
% for i = 1 : length(srcFiles)
%     filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactoryFormatFactoryfire_indoor_18\Label\',srcFiles(i).name);
%     fire3{i} = imread(filename);
%     fire3{i} = im2bw(fire3{i},0.9);
% end
save('videolabel.mat','nonfire1','fire1','fire2','fire3');
