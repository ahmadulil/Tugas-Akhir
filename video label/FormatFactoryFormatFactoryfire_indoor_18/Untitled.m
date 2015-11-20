v=VideoReader('FormatFactoryFormatFactoryfire_indoor_18.avi');
for i=1:v.NumberOfFrames
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end