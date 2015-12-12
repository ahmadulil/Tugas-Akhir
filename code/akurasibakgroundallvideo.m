function out = akurasibakgroundallvideo(thresh)
load video.mat;
load videolabel.mat;
load labelngerak.mat;
load labelngerak1.mat;

akurasi{1}=akurasibakgroundpervideo(thresh,vciri1,ciri1);
akurasi{2}=akurasibakgroundpervideo(thresh,vciri2,ciri2);
akurasi{3}=akurasibakgroundpervideo(thresh,vciri3,ciri3);

akurasi{4}=akurasibakgroundpervideo(thresh,vnonfire1,nonfire1);
akurasi{5}=akurasibakgroundpervideo(thresh,vnonfire2,nonfire2);
akurasi{6}=akurasibakgroundpervideo(thresh,vnonfire3,nonfire3);

akurasi{7}=akurasibakgroundpervideo(thresh,vfire1,fire1);
akurasi{8}=akurasibakgroundpervideo(thresh,vfire2,fire2);
akurasi{9}=akurasibakgroundpervideo(thresh,vfire3,fire3);

akurasi{10}=akurasibakgroundpervideo(thresh,vnongerak1,ngerak1);
akurasi{11}=akurasibakgroundpervideo(thresh,vnongerak2,ngerak);
akurasi{12}=akurasibakgroundpervideo(thresh,vnongerak3,ngerak);

out=akurasi;
end

