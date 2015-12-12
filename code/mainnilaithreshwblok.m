tic
hasil1=akurasiwblokallvideo(minimum);
hasil2=akurasiwblokallvideo(minimum+stda);
hasil3=akurasiwblokallvideo(minimum+2*stda);
hasil4=akurasiwblokallvideo(minimum+3*stda);
hasil5=akurasiwblokallvideo(minimum+4*stda);
save('test5thresholdwblokbukanapi','hasil1','hasil2','hasil3','hasil4','hasil5');
toc