function out = akurasiflickblokallvideo(thresh,min,max)
load video.mat;
load videolabel.mat;
% akurasiflickblokpervideo(thresh,min,max,video,label)
akurasi{1}=akurasiflickblokpervideo(thresh,min,max,vfire1,fire1);
akurasi{2}=akurasiflickblokpervideo(thresh,min,max,vfire2,fire2);
akurasi{3}=akurasiflickblokpervideo(thresh,min,max,vfire4,fire4);

out=akurasi;
end

