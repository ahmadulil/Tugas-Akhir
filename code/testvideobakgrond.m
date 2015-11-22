v=VideoReader('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\3\3.mp4');
load video3.mat;
%  for i=21:v.NumberOfFrame
    xfor=bakground(25,20,v,30);
    imwrite(xfor,'1.jpg');
    xfor=uint8(xfor);
    xfor(xfor==0)=20;
    a=xfor==img{30};
    c=sum(sum(img{30}==1));
    b=sum(sum(a));
    d=b/c;
%    end