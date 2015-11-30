v=VideoReader('FormatFactorynonfire_indoor_1~1.avi');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end