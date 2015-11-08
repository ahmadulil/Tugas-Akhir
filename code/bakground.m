function foregroundimage = bakground(nframe,video,curentframe)
start=curentframe-nframe;
[m,n,l]=size(read(video,curentframe));
frame=zeros(20,m,n);

frame(start:curentframe,:,:)=rgb2gray(read(video,start:curentframe));

x=zeros(m,n);

x=median(frame(start:curentframe));

xfor=zeros(m,n);
xfor=(frame(:,:,curentframe)-x) > 25

foregroundimage=xfor;
end


