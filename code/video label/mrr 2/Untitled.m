v=VideoReader('BMW M6 vs Mercedes C63 AMG vs Audi S6.mp4');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end