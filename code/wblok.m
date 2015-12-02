function [eblok,Ew] = wblok(img,startp,endp)
	[LL,LH,HL,HH]=dwt2(img(startp(1):endp(1),startp(2):endp(2),1),'db1');
	
    [n1,n2]=size(LL);
	
    HL1=HL.^2;
	LH1=LH.^2;
	HH1=HH.^2;
    
	Ew=HL1+LH1+HH1;
	eblok=sum(sum(Ew))/(n1+n2);
end

