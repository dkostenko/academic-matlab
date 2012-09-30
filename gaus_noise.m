n=400;
im=zeros(n, n);
  
for i=n-3*floor(n/4):n-floor(n/4)
    for j=n-3*floor(n/4):n-floor(n/4)
        im(i, j) = 1;
    end
end

a=0.10;
b=0.901;

noise = a + randn(size(im)) * b;
newim = double(im) + noise;


% bar(newim)
% grid on


subplot(1,3,1);
subimage(im);
subplot(1,3,2);
subimage(noise);
subplot(1,3,3);
subimage(newim);