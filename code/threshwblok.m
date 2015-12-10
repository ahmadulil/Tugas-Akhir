function out = threshwblok(thresh,i,j,arrEblok)
    if (wblok(i,j,arrEblok) > thresh)
        out=1;
    else
        out=0;
    end
end

