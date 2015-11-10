clc;
clear;
img=imread('3.jpg');
[a,b,c]=size(img);

% Nilai prob per pixel
for i=1:a
    for j=1:b
         nilaiprob(i,j)=fireprob(img(i,j,:));
    end
end
% divi=a/4;
% divj=b/4;
% 
% actblok=zeros(4,4);
% d=1.5e-07;
% for i=0:3
%     for j=0:3
%         if ( size((nilaiprob(i*divi:(i+1)*divi,j*divi:(j+1)*divi))>d)>1 )
%             actblok(i+1,j+1)=1;
%         end
%     end
% end



