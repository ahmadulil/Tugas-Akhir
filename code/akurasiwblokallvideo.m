function out = akurasiwblokallvideo(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=akurasiwblokpervideo(thresh,vfire2,fire2);
akurasi{2}=akurasiwblokpervideo(thresh,vfire3,fire3);
akurasi{3}=akurasiwblokpervideo(thresh,vfire4,fire4);

out=akurasi;

end

