function Ew = hitungwavelet(img)
	[LL,LH,HL,HH]=dwt2(img(:,:,1),'haar');
	
    [n1,n2]=size(LL);
	
    HL1=HL.^2;
	LH1=LH.^2;
	HH1=HH.^2;
    
	Ew=HL1+LH1+HH1;
end