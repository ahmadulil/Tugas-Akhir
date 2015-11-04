function Fblok = Flickblok(nframe,curentframe,video,startpx,endpx)
% flickerE(nframe,curentframe,video,px,py)
    sumf=0;
    sum=0;
    for i=startpx(1):endpx(1)
        for j=startpx(2):endpx(2)
           sum=sum+1;
           sumf=sumf+flickerE(nframe,curentframe,video,i,j); 
        end
    end
    Fblok=sumf/sum;
end

