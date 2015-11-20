v=VideoReader('FormatFactoryfire_indoor_10.avi');
for i=1:90
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end