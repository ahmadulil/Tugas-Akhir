function akurasi = testbakground(thresh,v,label)
    
    for i=21:v.NumberOfFrame
        xfor=bakground(thresh,20,v,30);
        xfor=uint8(xfor);
        xfor(xfor==0)=20;
        label{i}=uint8(label{i});
        label{i}(label{i}==1)=20;
        a(i)=sum(sum(label{i}==xfor));
    end
    akurasi=a(:);
end

