function out = probblok(probimg)
[m,n]=size(probimg);

divi=m/16;
divj=n/16;

blok=zeros(16,16);
for i=0:15
    for j=0:15
        blok(i+1,j+1)=sum(sum(probimg(i*divi+1:(i+1)*divi,j*divj+1:(j+1)*divj)))/(divi*divj);
    end
end

out=blok;
end

