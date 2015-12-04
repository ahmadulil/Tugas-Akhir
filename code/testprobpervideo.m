function out = nilaiprobpervideo(thresh,video,label)

for i=1:length(label)
    rgb=read(video,i);
    prob(:,:)=threshprob(thresh,rgb);
    coba=double(label{i});
    hasil{i}(:,:)=bsxfun(@times,coba,prob(:,:));
end

out=hasil;
end

