function out = akurasisptblokallvideo(thresh)
load video.mat;
load videolabel.mat;

% akurasi{1}=akurasisptblokpervideo(thresh,vfire1,fire1);
akurasi{2}=akurasisptblokpervideo(thresh,vfire2,fire2);
akurasi{3}=akurasisptblokpervideo(thresh,vfire3,fire3);

out=akurasi;

end
