function akurasi = testbakground(thresh,v,label)
    
    for i=21:length(label)
        xfor=bakground(thresh,20,v,30);
        xfor=uint8(xfor);
        xfor(xfor==0)=20;
        b=sum(sum(label{i}==1));
        label{i}=uint8(label{i});
        label{i}(label{i}==1)=20;
        a=sum(sum(label{i}==xfor));
        accur(i)=a;
    end
    akurasi=accur(:);
end

