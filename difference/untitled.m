im1 = imread('pic1.jpg');
im2 = imread('pic2.jpg');

im1 = rgb2gray(im1);
im2 = rgb2gray(im2);

m1 = imresize(im1, 0.2);
m2 = imresize(im2, 0.2);

im = im1 - im2;



[width, height] = size(im);

for i=1:1:width
    for j=1:1:height
        if(im(i,j)>50)
            im(i,j)=255;
        else
            im(i,j)=0;
        end
    end
end

subplot(1,3,1);
subimage(im1);

subplot(1,3,2);
subimage(im2);

subplot(1,3,3);
subimage(im);