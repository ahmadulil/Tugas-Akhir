function foregroundimage = bakground(nframe,video,curentframe)
if curentframe > nframe
    start=curentframe-nframe;
else
    start=1;
end
start
[m,n,l]=size(read(video,curentframe));
frame=zeros(nframe,m,n);

for i=start:curentframe
    frame(i,:,:)=rgb2gray(read(video,i));
end

x=zeros(m,n);

x(:,:)=median(frame(start:curentframe,:,:));
save('x.mat','x');
xfor=zeros(m,n);
c=zeros(m,n);
c(:,:)=reshape(frame(curentframe,:,:),[m,n]);

xfor=abs(c-x) > 25;
foregroundimage=xfor;

end


