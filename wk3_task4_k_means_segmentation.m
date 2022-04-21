BW = imread('mushroom img1.png');
idx = kmeans(BW,3);


tiledlayout(1,3)

nexttile
imshow(BW)
title('Original')

nexttile
imshow(idx)
title('Original')