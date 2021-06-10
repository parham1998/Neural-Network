function plot_dec_regions(net, lh, uh, lv, uv, rh, rv)

%lh: lower horizontal
%lv: lower vertical
%uh: upper horizontal
%uv: upper vertical

bouH = lh:rh:uh;
bouV = lv:rv:uv;

[m1, m2] = meshgrid(bouH, bouV);
m = [m1(:) m2(:)]';
imagesc(bouH, bouV, reshape(net(m), size(m1)));
%colors
cmap = [0.9 0.9 1; 1 0.8 0.8];
colormap(cmap);

end