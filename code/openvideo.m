vfire1=VideoReader('video label\fire 1\fire 1.avi');
vfire2=VideoReader('video label\fire 2\fire 2.avi');
vfire3=VideoReader('video label\fire 3\fire 3.avi');

vnonfire1=VideoReader('video label\nonfire 1\nonfire 1.avi');
vnonfire2=VideoReader('video label\nonfire 2\nonfire 2.avi');
vnonfire3=VideoReader('video label\nonfire 3\nonfire 3.avi');

vciri1=VideoReader('video label\ciri 1\ciri 1.avi');
vciri2=VideoReader('video label\ciri 2\ciri 2.mp4');
vciri3=VideoReader('video label\ciri 3\ciri 3.mp4');

save('video.mat','vnonfire1','vnonfire2','vnonfire3','vfire1','vfire2','vfire3','vciri1','vciri2','vciri3');
