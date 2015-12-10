divi=15;
divj=10;
for i=0:15
    for j=0:15
        if mod(i,2)
            startp(1)=divi*floor(i/2)+8;
            endp(1)=startp(1)+7;
            sizedivi=8;
        else
            startp(1)=divi*i/2+1;
            endp(1)=startp(1)+6;
            sizedivi=7;
        end
        start(i+1,j+1)=startp(1);
        enda(i+1,j+1)=endp(1);
    end
end