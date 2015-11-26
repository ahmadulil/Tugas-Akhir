load video.mat;
load videolabel.mat;

akurasi=testbakground(25,vnonfire1,nonfire1);
akurasi1=testbakground(25,vfire1,fire1);
akurasi2=testbakground(25,vfire2,fire2);
akurasi3=testbakground(25,vfire3,fire3);