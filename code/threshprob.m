function out = threshprob(model,thresh,img)
prob=fireprob4(model,img);
out=prob > thresh;
end