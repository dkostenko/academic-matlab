N=1000;
r=0:N - 1;
c=0:N - 1;
[C, R] = meshgrid(c,r);
g=sin(1/1000 *C) .* (sin(10*pi)+ 1/800 * R);
imshow(g);