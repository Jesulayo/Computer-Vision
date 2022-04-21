BW = imread('noisy-fingerprint.tif');
se = strel('diamond', 1);
se2 = strel('square',1);
BW2 = imerode(BW,se);
BW3 = imerode(BW,se2);

%imshow(BW), title('Original')
%figure, imshow(BW2), title('Dilated')

tiledlayout(1,3)

nexttile
imshow(BW)
title('Original')

nexttile
imshow(BW2)
title('Dilated')

nexttile
imshow(BW3)
title('New Dilated')