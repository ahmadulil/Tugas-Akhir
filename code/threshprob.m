function out = threshprob(thresh,img)
prob=fireprob4(img);
out=fireprob4 > thresh;
end