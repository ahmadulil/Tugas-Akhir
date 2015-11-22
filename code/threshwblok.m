function out = threshwblok(thresh,img,startp,endp)
    if (wblok(img,startp,endp) > thresh)
        out=1;
    else
        out=0;
    end
end

