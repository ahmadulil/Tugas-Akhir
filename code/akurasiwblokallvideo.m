function out = akurasiwblokallvideo(thresh)
load video.mat;
load videolabel.mat;

% akurasi{1}=akurasiwblokpervideo(thresh,vfire1,fire1);
akurasi{2}=akurasiwblokpervideo(thresh,vfire2,fire2);
akurasi{3}=akurasiwblokpervideo(thresh,vfire3,fire3);

out=akurasi;

end

