function out = fireprob2(img)
load trainfire.mat
[sz,ss]=size(model);
vari(1)=var(model(:,1));
vari(2)=var(model(:,2));
vari(3)=var(model(:,3));
nilai=0;
%         img=double(img);
%         model=double(model);
%         c=double((a-b)).^2;
%         d=(1/2)*(-c/vari(j));
term1=1;
for j=1:3
     a=double(img(:,:,j));
     b=double(model(:,j));
     f=a-b;
     c=double(f).^2;
     d=(1/2)*(-c/vari(j));
     e=exp(d);
     term2=[1/sqrt(2*3.14*vari(j))]*e;
     term1=term1*term2;
end

nilai=sum(term2);
end

