function foregroundimage = bacgroundsubstract(video,curentframe)
start=curentframe-20;
[m,n,l]=size(read(video,curentframe));
frame=zeros(20,m,n);
for i=start:curentframe
    frame(i,:,:)=rgb2gray(read(video,i));
end
x=zeros(m,n);
for i=1:m
    for j=1:n
        x(i,j)=median(frame(start:curentframe,i,j));
    end
end
foregroundimage=x;
end

