cc
load data;
load('C:\Users\dqico\Desktop\dqicool.mat')
Img = filtTheProj(B);
Imgg = reebuild(Img);
[x,y] = meshgrid(1:362,1:362);
mesh(x,y,Imgg);
figure(2);
imshow(Imgg,[])