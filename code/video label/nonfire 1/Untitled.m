v=VideoReader('FormatFactorynonfire_indoor_5~2.avi');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end