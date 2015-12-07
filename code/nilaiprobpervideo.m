function out = nilaiprobpervideo(video,label)
load trainfire.mat
for i=1:length(label)
    rgb=read(video,i);
    prob(:,:)=fireprob4(model,rgb);
    coba=double(label{i});
    hasil{i}(:,:)=bsxfun(@times,coba,prob(:,:));
end

out=hasil;
end

