tic
% akurasiflickblokallvideo(thresh,min,max)
hasil1=akurasiflickblokallvideo(minimum,mina+2*stdprob,maxa);
hasil2=akurasiflickblokallvideo(minimum+stda,mina+2*stdprob,maxa);
hasil3=akurasiflickblokallvideo(minimum+2*stda,mina+2*stdprob,maxa);
hasil4=akurasiflickblokallvideo(minimum+3*stda,mina+2*stdprob,maxa);
hasil5=akurasiflickblokallvideo(minimum+4*stda,mina+2*stdprob,maxa);

save('test5thresholdflickblok','hasil1','hasil2','hasil3','hasil4','hasil5');
toc