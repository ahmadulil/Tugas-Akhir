function eblok = wblok(img,startp,endp)
    jum=0;
    nsum=0;
    for i=startp(1):endp(1)
        for j=startp(2):endp(2)
            nsum=nsum+Ew(img,i,j);
            jum=jum+1;
        end
    end
    eblok=nsum/jum;
end

