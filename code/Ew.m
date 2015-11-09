function nw = Ew(img,px,py)
    [LL,LH,HL,HH]=dwt2(img(:,:,1),'db1');
    nilai=HL(px,py).^2+LH(px,py).^2+HH(px,py).^2;
    nw=nilai;
end

