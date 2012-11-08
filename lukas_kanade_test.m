% Im = imread('cameraman.tif');
% Im = imread('pout.tif');
Im = imread('trees.tif');

DGaussx = [-1, -2, -1, 0, 0, 0, 1, 2, 1];
DGaussy = [-1, 0, 1, -2, 0, 2, -1, 0, 1];


Ix = imfilter(Im,DGaussx,'conv');
Iy = imfilter(Im,DGaussy,'conv');

newIm = Ix + Iy;


subplot(2,2,1), subimage(uint8(Im));
subplot(2,2,2), subimage(Ix);
subplot(2,2,3), subimage(Iy);
subplot(2,2,4), subimage(newIm);