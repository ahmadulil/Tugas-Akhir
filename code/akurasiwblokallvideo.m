function out = akurasiwblokallvideo(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=akurasiwblokpervideononfire(thresh,vciri1,ciri1);
akurasi{2}=akurasiwblokpervideononfire(thresh,vciri2,ciri2);
akurasi{3}=akurasiwblokpervideononfire(thresh,vciri3,ciri3);

out=akurasi;

end

