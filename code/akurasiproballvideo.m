function out = akurasiproballvideo(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=akurasiprobpervideo(thresh,vfire1,fire1); 
akurasi{2}=akurasiprobpervideo(thresh,vfire2,fire2);
akurasi{3}=akurasiprobpervideo(thresh,vfire3,fire3);
out=akurasi;
end

