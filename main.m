cc
load data;
Img = filtTheProj(AS4);
Imgg = reebuild(Img);
[x,y] = meshgrid(1:362,1:362);
mesh(x,y,Imgg);
figure(2);
imshow(Imgg,[])