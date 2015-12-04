function out = threshprob(thresh,img)
prob=fireprob4(img);
out=prob > thresh;
end