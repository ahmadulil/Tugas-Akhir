clc;
clear;
img=imread('15.jpg');
[m,n,l]=size(img);
firep=zeros(m,n);
for i=1:m
    for j=1:n
        firep(i,j)=fireprob2(img(i,j,:));
    end
end
