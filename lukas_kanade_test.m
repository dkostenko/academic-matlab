% Im1 = imread('cameraman.tif');
% Im = imread('pout.tif');
% Im = imread('trees.tif');
% Im = imread('moon.tif');

Im1 = imread('/Users/macbook/Downloads/OpticalFlow/table1.jpg');
Im2 = imread('/Users/macbook/Downloads/OpticalFlow/table2.jpg');

proizvodnayaX = [-1, -2, -1, 0, 0, 0, 1, 2, 1];
proizvodnayaY = [-1, 0, 1, -2, 0, 2, -1, 0, 1];


Ix1 = imfilter(Im1,proizvodnayaX,'conv');
Iy1 = imfilter(Im1,proizvodnayaY,'conv');
newIm1 = Ix1 + Iy1;


Ix2 = imfilter(Im2,proizvodnayaX,'conv');
Iy2 = imfilter(Im2,proizvodnayaY,'conv');
newIm2 = Ix2 + Iy2;

newIm3 = Ix1 + Iy1;

subplot(2,2,1), subimage(Im1);
subplot(2,2,2), subimage(Ix1);
subplot(2,2,3), subimage(Iy1);
subplot(2,2,4), subimage(newIm3);