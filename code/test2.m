clc;
clear;
img=imread('15.jpg');
[a,b,c]=size(img);

% Nilai prob per pixel pada frame
for i=1:a
    for j=1:b
         nilaiprob(i,j)=fireprob(img(i,j,:));
    end
end
% save('nilai.mat','nilaiprob');
divi=a/4;
divj=b/4;

actblok=zeros(8,8);
d=1.5e-07;

%blok aktif penentuan 
for i=0:7
    for j=0:7
        prob=(nilaiprob(i*divi+1:(i+1)*divi,j*divi+1:(j+1)*divi))>d;
         if (any(prob))
             actblok(i+1,j+1)=1;
         end
    end
end

% penentuan energiwavelet blok
