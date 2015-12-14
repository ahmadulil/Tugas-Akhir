function out = akurasiflickblokallvideo(thresh,min,max)
load video.mat;
load videolabel.mat;
% akurasiflickblokpervideo(thresh,min,max,video,label)
akurasi{1}=akurasiflickblokpervideononfire(thresh,min,max,vnonfire1,nonfire1);
akurasi{2}=akurasiflickblokpervideononfire(thresh,min,max,vciri1,ciri1);
akurasi{3}=akurasiflickblokpervideononfire(thresh,min,max,vciri2,ciri2);

out=akurasi;
end

