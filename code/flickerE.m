function F = flickerE(nframe,curentframe,video,px,py)
    startf=curentframe-nframe;
    endf=curenframe-1;
    ci=0;
    for i=startf:endf
        if ( (video(px,py,curentframe) - video(px,py,i)) > 0 )
            ci=ci+1;
        end
    end
    F= 2^ci - 1;
end

