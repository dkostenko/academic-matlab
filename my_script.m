Im = double(imread('moon.tif'));
% imshow(uint8(Im));

X=1/6*[1 1 1; 0 1 0; 0 0 0];



[aIm, bIm] = size(Im);
[aX, bX] = size(X);
    
    
newIm = zeros( aIm+aX-1, bIm+bX-1 );

tic
for i = 1:aX
    for j = 1:bX
        r1 = i;
        r2 = r1 + aIm - 1;
        c1 = j;
        c2 = c1 + bIm - 1;
        newIm(r1:r2,c1:c2) = newIm(r1:r2,c1:c2)+X(i,j) * Im;
    end
end


r1 = floor(aX/2) + 1;
r2 = r1 + aIm - 1;
c1 = floor(bX/2) + 1;
c2 = c1 + bIm - 1;
newIm = uint8(newIm(r1:r2, c1:c2));
toc


% imshow(newIm);

subplot(1,2,1), subimage(uint8(Im));
subplot(1,2,2), subimage(newIm);