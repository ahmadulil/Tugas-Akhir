tic
hasil1=akurasisptblokallvideo(minimum);
hasil2=akurasisptblokallvideo(minimum+stda);
hasil3=akurasisptblokallvideo(minimum+2*stda);
hasil4=akurasisptblokallvideo(minimum+3*stda);
hasil5=akurasisptblokallvideo(minimum+4*stda);

save('test5thresholdsptblokbukanapi','hasil1','hasil2','hasil3','hasil4','hasil5');
toc