    v=VideoReader('FormatFactoryfire_outdoor_9.avi');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end