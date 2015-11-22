function F = flickerE(thresh,nframe,curentframe,video,px,py)
    startf=curentframe-nframe;
    endf=curenframe-1;
    ci=0;
    probc=threshprob(read(video,i)(px,py,:));
    for i=startf:endf
        if (probc ~= threshprob(thresh,read(video,i)(px,py,:)) )
            ci=ci+1;
        end
    end
    F = 2^ci - 1;
    
end

