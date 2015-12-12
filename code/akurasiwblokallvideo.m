function out = akurasiwblokallvideo(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=akurasiwblokpervideononfire(thresh,vfire4,fire4);
akurasi{2}=akurasiwblokpervideononfire(thresh,vfire2,fire2);
akurasi{3}=akurasiwblokpervideononfire(thresh,vfire3,fire3);

out=akurasi;

end

