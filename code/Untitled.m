load video.mat

 for i=1:vfire1.NumberOfFrame
    prob1{i}(:,:)=fireprob4(read(vfire1,i));
 end
 
%  for i=1:vfire2.NumberOfFrame
%     prob2(i)=fireprob4(read(vfire2,i));
%  end
%  
%  
%  for i=1:vfire3.NumberOfFrame
%     prob3(i)=fireprob4(read(vfire3,i));
%  end
 
 