% N=256;
% 
% im = ones(N, N);
% for i = 1:1:N
%     for j = 1:1:N
%         im(i,j) = sin(i);
%     end
% end
% 
% im1 = ones(N, N);
% for i = 1:1:N
%     for j = 1:1:N
%         im1(i,j) = sin(j);
%     end
% end
% 
% im = im + im1;
% 
% 
% imshow(im);

N=1000;
r=0:N - 1;
c=0:N - 1;
[C, R] = meshgrid(c,r);
im = ones(N, N);
im = sin(C*1/10) .* sin(R*1/10);

imshow(im);