function out = fireprob4(model,img)

[m,n,l]=size(img);
term1=1;

for i=1:3
    vari(i)=var(model(:,i));
	
    imgrd=double(reshape(img(:,:,i),[],1)');
	
    diff(:,:) = bsxfun(@minus,imgrd,model(:,i));
	
    term1=term1.*[[1/sqrt(2*3.14*vari(i))]*exp((-0.5.*(diff(:,:).^2))/vari(i))];
end

term2=reshape((sum(term1,1)),[m,n]);
ss=size(model);
term2=term2./ss(1);

out=term2;
end

