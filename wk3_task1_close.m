BW = imread('noisy-fingerprint.tif');
se = strel('diamond', 7);
se2 = strel('square',10);
BW2 = imclose(BW,se);
BW3 = imclose(BW,se2);

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