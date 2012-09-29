N=1000;
r=0:N - 1;
c=0:N - 1;
[C, R] = meshgrid(c,r);
g = sin(10/(pi)*R + 10/(pi)*C);
% g=mat2gray(uint16(g));
imshow(g)