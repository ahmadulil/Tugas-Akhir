function out = threshprobimgbaru(model,min,max,img)
prob=fireprob4(model,img);
out=prob > min & prob < max;
end

