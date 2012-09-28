n=0;
  
while n<10
 n = input('введите n: ');
 end
 
  im=zeros(n, n);
  
  for i=n-3*floor(n/4):n-floor(n/4)
      for j=n-3*floor(n/4):n-floor(n/4)
          im(i, j) = 1;
      end
  end
 
 colormap(gray);
 imagesc(uint16(im));




% function [rt, f, g] = twodsin(uO, vO, M, N)
% 
% M=100;
% N=100;
% 
% for r = 1:M
%     uOx = uO*(r - 1);
%     for c = 1:N
%         vOy = vO*(c - 1)
%         % ycount = ycount +1;
%         f(r, c) = Asin(u0x + vOy);
%     end
% end
% 
% r = 0:M - 1;
% c = 0:N - 1;
% [C, R] = meshgrid(c, r);
% g = asin(uO*R + vO*C);