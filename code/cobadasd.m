suma=0;
for i=1:255
    for j=1:255
        for k=1:255
            suma=suma+1;
            mofrl(suma,:)=[i j k];
        end
    end
end