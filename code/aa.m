srcFiles = dir('video label\fire 3\label\*.jpg');  % the folder in which ur images exists
for i = 1:length(srcFiles)
    filename = strcat('video label\fire 3\label\',int2str(i),'.jpg');
    fire3{i} = imread(filename);
    fire3{i} = im2bw(fire3{i},0.9);
    fire=imresize(fire3{i},[240 320]);
    imwrite(fire,strcat(int2str(i),'.jpg'));
end