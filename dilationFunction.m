function grayImNew = dilationFunction (grayIm)
% DILATIONFUNCTION ���������� �����������
% DILATIONFUNCTION(grayIm), ��� grayIm - ������ �����������
                 
    grayImNew = grayIm;


    % ��������� Fill
    for i=2:1:324-2
        for j=2:1:464-2
            if(grayIm(i, j)==0)
                if(grayIm(i-1, j-1)==255 || grayIm(i-1, j)==255 || grayIm(i-1, j+1)==255 || grayIm(i, j-1)==255 || grayIm(i, j)==255 || grayIm(i, j+1)==255 || grayIm(i+1, j-1)==255 || grayIm(i+1, j)==255 || grayIm(i+1, j+1)==255)
                    grayImNew(i, j)=255;
                end
            end
        end
    end