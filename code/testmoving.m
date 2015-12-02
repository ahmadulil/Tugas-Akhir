function akurasi = testmoving(thresh)
load video.mat;
load videolabel.mat;

akurasi{1}=testbakground(thresh,vciri1,ciri1);
akurasi{2}=testbakground(thresh,vciri2,ciri2);
akurasi{3}=testbakground(thresh,vciri3,ciri3);

akurasi{4}=testbakground(thresh,vnonfire1,nonfire1);
akurasi{5}=testbakground(thresh,vnonfire2,nonfire2);
akurasi{6}=testbakground(thresh,vnonfire3,nonfire3);

akurasi{7}=testbakground(thresh,vfire1,fire1);
akurasi{8}=testbakground(thresh,vfire2,fire2);
akurasi{9}=testbakground(thresh,vfire3,fire3);
end

