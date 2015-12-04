function out = threshsptblok(thresh,video,nframe,ncurent,startp,endp,arrEblok)
    if (sptblok(video,nframe,ncurent,startp,endp,arrEblok) > thresh)
        out=1;
    else
        out=0;
    end
end


