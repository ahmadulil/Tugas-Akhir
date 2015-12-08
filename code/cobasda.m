% figure
% X=model(:,1);
% Y=model(:,2);
% Z=model(:,3);
% % [X,Y,Z] = sphere(16);
% % x = [0.5*X(:); 0.75*X(:); X(:)];
% % y = [0.5*Y(:); 0.75*Y(:); Y(:)];
% % z = [0.5*Z(:); 0.75*Z(:); Z(:)];
% scatter3(X,Y,Z,10,'filled')
aa=imread('1.jpg');
aa=reshape(aa,[],3);
a=size(model);
Class = knnclassify(aa,model,repmat(1,a(1),1));
% ,10,'euclidean','nearest')