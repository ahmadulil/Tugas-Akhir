function vp = spt(nframe,ncurent,px,py,arrE,curentE)
startf=ncurent-nframe;
endf=nframe;
nsum=0;
meanE=mean(arr(px,py,startf:endf));
    for i=startf:endf
        nsum=nsum+(arr(px,py,i) - meanE).^2;
    end
    vp=nsum/nframe;
end

