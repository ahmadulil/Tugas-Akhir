clc;
clear;
img=imread('15.jpg');


vidObj = VideoReader(complete);
for i=1:max(vidObj.NumberOfFrames) 
    vidFrame = rgb2gray(read(vidObj,i));
    [a,b,c]=size(vidFrame);
    nilaiprob=zeros(a,b);
    foreground=bakground(1,vidObj,i);
        for i=1:a
            for j=1:b
                 if (foreground(i,j)>0)
                    nilaiprob(i,j)=fireprob(vidFrame(i,j,:));
                 end
            end
        end

        divi=a/8;
        divj=b/8;

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
        % under construction

        % Flickblok(nframe,curentframe,video,startpx,endpx)
        % Menghitung Fblok dari frame
        for i=0:7
            for j=0:7
                 if (actblok(i+1,j+1)==1)
                     Fblok(i+1,j+1)=Flickblok(nframe,curentframe,video,i*divi+1:(i+1)*divi,j*divi+1:(j+1)*divi)
                 end
            end
        end
    imshow(foreground,[]);
    pause(1/(vidObj.FrameRate));
end
% Nilai prob per pixel pada frame
