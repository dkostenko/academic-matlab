im=imread('qwe.jpg');

% переводим в серое
grayIm = rgb2gray(im);

% размер изображения
[X, Y] = size(im);


% переводим в бинарное
for i=1:1:324-1
    for j=1:1:464-1
        if(grayIm(i, j)>200)
            grayIm(i, j) = 255;
        else
            grayIm(i, j) = 0;
        end
    end
end

grayImOld = grayIm;


% выполняем Fill
for i=2:1:324-2
    for j=2:1:464-2
        if(grayIm(i, j)==0)
            if(grayIm(i-1, j-1)==255 && grayIm(i-1, j)==255 && grayIm(i-1, j+1)==255 && grayIm(i, j-1)==255 && grayIm(i, j)==255 && grayIm(i, j+1)==255 && grayIm(i+1, j-1)==255 && grayIm(i+1, j)==255 && grayIm(i+1, j+1)==255)
                grayIm(i, j)==255;
            end
        end
    end
end



subplot(1,2,1);
subimage(grayImOld);
subplot(1,2,2);
subimage(grayIm);