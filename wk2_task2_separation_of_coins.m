BW = imread('coins.gif');

%imbinarize the image or use logical function 
%to convert from unit8 to logical

%BW = logical(BW);
BW = imbinarize(BW);

%define structuring elements
se = strel('disk', 29);
se2 = strel('disk', 6);

%apply opening morphology operation
BW2 = imopen(BW, se);
%apply erosion morphology operation
BW3 = imerode(BW2, se2);



tiledlayout(1,3)

nexttile
imshow(BW)
title('Original')

nexttile
imshow(BW2)
title('After opening')

nexttile
imshow(BW3)
title('Separated Coins')