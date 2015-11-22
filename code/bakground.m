function foregroundimage = bakground(thresh,nframe,video,curentframe)
if curentframe > nframe
    start=curentframe-nframe;
else
    start=1;
end

[m,n,l]=size(read(video,curentframe));
frame=zeros(nframe,m,n);

for i=start:curentframe
    frame(i,:,:)=rgb2gray(read(video,i));
end

x=zeros(m,n);

x(:,:)=median(frame(start:curentframe,:,:));

xfor=zeros(m,n);
d(:,:)=frame(curentframe,:,:);

xfor=abs(d-x) > thresh;
foregroundimage=xfor;

end


