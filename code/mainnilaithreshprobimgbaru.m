tic
% % % akurasiimageprob(min,max)
% for i=0:2
%     for j=0:2
akurasi1=akurasiimageprob(mina,maxa);
akurasi2=akurasiimageprob(mina,maxa-stda);
akurasi3=akurasiimageprob(mina,maxa-2*stda);
akurasi4=akurasiimageprob(mina+stda,maxa);
akurasi5=akurasiimageprob(mina+stda,maxa-stda);
akurasi6=akurasiimageprob(mina+stda,maxa-2*stda);
akurasi7=akurasiimageprob(mina+2*stda,maxa);
akurasi8=akurasiimageprob(mina+2*stda,maxa-stda);
akurasi9=akurasiimageprob(mina+2*stda,maxa-2*stda);

% variables
save('test8thresholdprobimgbaru.mat');
toc