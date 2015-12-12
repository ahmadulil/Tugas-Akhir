function out = threshflickblok(thresh,nframe,curentframe,allprob,i,j)
    if (Flickblok(nframe,curentframe,allprob,i,j) > thresh)
        out=1;
    else
        out=0;
    end
end

