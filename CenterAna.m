function [Ctr1,Ctr2] = CenterAna(Img)
    [y1,x1] = find(max(max(Img)) == Img);
    Ctr1 = [x1,y1];
    Imgg = Img(251:362,321:362);
    [y2,x2] = find(max(max(Imgg)) == Imgg);
    Ctr2 = [x2 + 320, y2 + 251];
end