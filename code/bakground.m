function foregroundimage = bakground(nframe,video,curentframe)
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
% c(:,:)=reshape(frame(curentframe,:,:),[m,n]);

xfor=abs(d-x) > 25;
foregroundimage=xfor;

end


