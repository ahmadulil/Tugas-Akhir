function vblok = sptblok(nframe,ncurent,startf,endf,arrE,curentE)
sum=0;
nsum=0;
    for i=startf(1):endf(1)
        for j=startf(2):endf(2)
            sum=sum+1;
            nsum=nsum+spt(nframe,ncurent,i,j,arrE,curentE);
        end
    end
vblok=nsum/sum;
end

