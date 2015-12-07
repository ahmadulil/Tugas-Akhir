function foregroundimage = bakground(thresh,nframe,video,curentframe)
if curentframe > nframe
    start=curentframe-nframe;
else
    start=1;
end
curentframe=curentframe-1;
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
        se90 = strel('line', 5, 90);
        se0 = strel('line', 5, 0);
        BWsdil = imdilate(xfor, [se90 se0]);
        BWsdil = imfill(BWsdil, 'holes');
        BWsdil = imclearborder(BWsdil, 4);
        seD = strel('diamond',1);
        BWsdil = imerode(BWsdil,seD);
        BWsdil = imerode(BWsdil,seD);
foregroundimage=BWsdil;

end


