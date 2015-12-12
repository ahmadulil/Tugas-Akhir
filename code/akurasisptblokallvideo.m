function out = akurasisptblokallvideo(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=akurasisptblokpervideononfire(thresh,vnonfire1,nonfire1);
akurasi{2}=akurasisptblokpervideononfire(thresh,vciri1,ciri1);
akurasi{3}=akurasisptblokpervideononfire(thresh,vnonfire3,nonfire3);

out=akurasi;

end
