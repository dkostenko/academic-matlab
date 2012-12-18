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


grayImNew = dilationFunction(grayIm);
% raznost = grayImNew - grayIm;
% count = 1;
% 
% for j=1:1:300
%     grayIm = grayImNew;
%     grayImNew = dilationFunction(grayIm);
%     raznost = grayImNew - grayIm;
%     
%     for i=1:1:324-1
%         for k=1:1:464-1
%             if(raznost(i, k)>0)
%                 count = 1;
%             end
%         end
%     end
% end









subplot(1,3,1);
subimage(grayImOld);
subplot(1,3,2);
subimage(grayIm);
subplot(1,3,3);
subimage(grayImNew);


