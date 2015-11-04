clc;
clear;
img=imread('fire.jpg');
[m,n,l]=size(img);
firep=zeros(m,n);
for i=1:m
    for j=1:n
        firep(i,j)=fireprob(img(i,j,:));
    end
end
