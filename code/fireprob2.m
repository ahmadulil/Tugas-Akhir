function out = fireprob2(img)
load trainfire.mat
[sz,ss]=size(model);
vari(1)=var(model(:,1));
vari(2)=var(model(:,2));
vari(3)=var(model(:,3));
nilai=0;
term1=ones(sz,1)';
for i=1:3
    A=model(:,i);
    diff=A - double(img(i));
    diff=diff.^2;
    d=(1/2)*(-diff/vari(i));
    e=exp(d);
    term2(i,:)=[1/sqrt(2*3.14*vari(i))]*e;
    term1=term1.*term2(i,:);
end
out=sum(term1)/sz;
end

