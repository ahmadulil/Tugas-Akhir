ind=0;
model=zeros(1,3);
srcFiles = dir('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\code\fireimage1 label\*.jpg');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\code\fireimage1 label\',srcFiles(i).name);
    img{i} = imread(filename);
    [a,b,c]=size(img{i});
    for j=1:a
        for k=1:b
            if ((img{i}(j,k,1)~=0) && (img{i}(j,k,2)~=0) && (img{i}(j,k,3)~=0))
                if ( ((any(model(:,1)==img{i}(j,k,1)))==0) || (any(model(:,2)==img{i}(j,k,2))==0) || (any(model(:,3)==img{i}(j,k,3))==0) )
                    ind=ind+1;
                    model(ind,:)=img{i}(j,k,:);
                end
            end
        end
    end
    save('trainfirefireimage1label.mat','model');
end
