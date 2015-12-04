akurasi1=akurasiproballvideo(minimum);
akurasi2=akurasiproballvideo(minimum+stda);
akurasi3=akurasiproballvideo(minimum+2*stda);
akurasi4=akurasiproballvideo(minimum+3*stda);
akurasi5=akurasiproballvideo(minimum+4*stda);
save('test5thresholdprob.mat','akurasi1','akurasi2','akurasi3','akurasi4','akurasi5');