function out = threshsptblok(thresh,nframe,ncurent,i,j,arrEblok)
    if (sptblok(nframe,ncurent,i,j,arrEblok) > thresh)
        out=1;
    else
        out=0;
    end
end


