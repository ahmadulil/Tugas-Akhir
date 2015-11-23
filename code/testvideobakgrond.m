v=VideoReader('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas-Akhir\video label\FormatFactorynonfire_indoor_5~2\22.avi');
load video.mat;
% for i=21:v.NumberOfFrame
    xfor=bakground(100,20,v,30);
    imwrite(xfor,'1.jpg');
    xfor=uint8(xfor);
    xfor(xfor==1)=20;
    imga=uint8(img{30});
    imga(imga==0)=20;
    a=imga==xfor;
%     c=sum(sum(img{30}==1));
    b=sum(sum(a));
%     d=b/c;
% end