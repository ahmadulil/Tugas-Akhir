function out = fireprob(rgb)
load trainfire.mat
[a,b]=size(model);
vari(1)=var(model(:,1));
vari(2)=var(model(:,2));
vari(3)=var(model(:,3));
nilai=0;

for i=1:a
    term1=1;
    for j=1:3
        a=double(rgb(j));
        b=double(model(i,j));
        c=double((a-b)).^2;
        d=(1/2)*(-c/vari(j));
        e=exp(d);
        term2=[1/sqrt(2*3.14*vari(j))]*e;
        term1=term1*term2;
    end
    nilai=nilai+term1;
    
end
out=nilai/a;
end

