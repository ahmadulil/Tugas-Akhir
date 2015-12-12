    v=VideoReader('cut.mp4');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end