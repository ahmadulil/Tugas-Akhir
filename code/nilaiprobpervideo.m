function out = nilaiprobpervideo(video,label)

for i=1:length(label)
    rgb=read(video,i);
    prob(:,:)=fireprob4(rgb);
    coba=double(label{i});
    hasil{i}(:,:)=bsxfun(@times,coba,prob(:,:));
end

out=hasil;
end

