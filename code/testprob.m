clc;
clear;
v=VideoReader('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\fire_indoor_10\FormatFactoryfire_indoor_10.avi');
img=read(v,1);
[m,n,l]=size(img);
firep=zeros(m,n);
for k=1:1
    for i=1:m
        for j=1:n
            firep(i,j,k)=fireprob(img(i,j,:));
        end
    end
end
