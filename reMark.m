function phyCtrnew = Remark(Img, phyCtr, AngleFix)
% 旋转图形到正 并标定原点
    Imgg = imrotate(Img, AngleFix * 180 / pi);

    rotCtrori = fix((size(Img)+1)/2);
    rotCtrnew = fix((size(Imgg)+1)/2);

    relativepos = phyCtr - rotCtrori;
    phyCtrnew = ([cos(-AngleFix),-sin(-AngleFix);sin(-AngleFix),cos(-AngleFix)] * relativepos')';
    phyCtrnew = phyCtrnew + rotCtrnew;
    imshow(Imgg,[]);
    hold on;
    plot(phyCtrnew(1),phyCtrnew(2),'.');
end
