a=size(C);
b=size(model);
bc=repmat(0,a(1)-b(1),3);
AC=[model;bc];
AC(AC~=C);