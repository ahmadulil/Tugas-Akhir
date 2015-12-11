tic
% akurasiimageprob(min,max)
akurasi1=akurasiimageprob(mina-stda,maxa+stda);
akurasi2=akurasiimageprob(mina,maxa);
akurasi3=akurasiimageprob(mina+stda,maxa);
akurasi4=akurasiimageprob(mina+2*stda,maxa);
akurasi5=akurasiimageprob(mina+3*stda,maxa-stda);
save('test5thresholdprobimgbaru.mat','akurasi1','akurasi2','akurasi3','akurasi4','akurasi5');
toc