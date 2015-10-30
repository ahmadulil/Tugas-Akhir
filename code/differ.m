function  background  = differ( video,curentframe )
j=curentframe;
g=rgb2gray(read(video,j));
h=rgb2gray(read(video,j+1));
i=rgb2gray(read(video,j-1));
d=imabsdiff(h,g);
k=imabsdiff(d,i);
thresh = graythresh(k);
thresh
save(k,'coba.mat');
bw=k;
bw = (k >= thresh * 255); 
imshow(uint8(bw(:,:,1)))
background=bw;
end

