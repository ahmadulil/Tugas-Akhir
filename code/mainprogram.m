function out = mainprogram(video)
    for k=1:video.NumberOfFrame
    [eblok,arrEblok(:,:,k)]=wblok(read(video,k),[1 1],[m n]); %ngitung arre dlu biar cepet
    end
    for k=31:video.NumberOfFrame
        foreground=bakground(30,20,video,k);
        probimg=threshprob(minimum+3*stda,read(video,k));
        for i=0:15
            for j=0:15 %pembagian menjadi 16 blok
                startp=[i*divi+1;j*divj+1]; %pixel blok
                endp=[(i+1)*divi;(j+1)*divj]; %pixel blok

                startp=uint8(startp);
                endp=uint8(endp);

                sptfblok(i+1,j+1)=threshsptblok(thresh,video,30,k,startp,endp,arrEblok); %hitung nilai wblok

                if (sum(sum(probimg(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
                    actblok(i+1,j+1)=1; %penanda label 
                end

            end
        end
    end
    
    
end

