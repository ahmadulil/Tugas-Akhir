v=VideoReader('FormatFactoryfire_indoor_13.avi');
for i=120:210
    a=read(v,i);
    imwrite(a,strcat(int2str(i),'.jpg'));
end