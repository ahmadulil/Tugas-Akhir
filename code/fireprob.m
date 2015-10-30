function out = fireprob(rgb)
load trainfire.mat
[a,b]=size(model);
vari(1)=var(model(:,1));
vari(2)=var(model(:,2));
vari(3)=var(model(:,3));
for i=1:a
    for j=1:3
        term2=[1/sqrt(2*3.14*vari(j))]*exp[(-1*(rgb(j)-model(i,j)).^2)/(2*var(j))]
        term1=term1*term2;
    end
    nilai=nilai+term;
end
out=nilai/a;
end

