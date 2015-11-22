function out = threshprob(thresh,rgb)
	if fireprob(rgb) > thresh
		out=1;
	else
		out=0;
	end
end