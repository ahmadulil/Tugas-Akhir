function foregroundimage = background(video,curentframe)
start=curentframe-20;
[m,n,l]=size(read(video,curentframe));
frame=zeros(20,m,n);
for i=start:curentframe
    frame(i,:,:)=rgb2gray(read(video,i));
end
x=zeros(m,n);
for i=1:m
    for j=1:n
        y=median(frame(start:curentframe,i,j));
        x(i,j)=y;
        end
end

xfor=zeros(m,n);

    for i=1:m
		for j=1:n
			if ((curentframe(i,j) - x(i,j)) > 25 )
				xfor(i,j)=1;
			end
		end
	end
	
foregroundimage=xfor;
end


