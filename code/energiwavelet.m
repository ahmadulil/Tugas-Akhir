function nw = Ew(img,px,py)
    [hlw,lhw,hhw]=dwt2(img(:,:,1),'db1');
    nilai=hlw(px,py).^2+lhw(px,py).^2+hhw(px,py).^2;
    nw=nilai;
end

