cc
load data;
Img = filtTheProj(AS1);
figure(1);
imshow(Img,[]);
Imgg = reebuild(Img);
figure(2);
[x,y] = meshgrid(1:362,1:362);
mesh(x,y,Imgg);

