% ���������� �������������� �������������� �����������: 
% ����� ������� �������.

I=checkerboard(10);
% figure
% subplot(331)
% imshow(I)
% title('original')


scale=0.8;       % ����������� ���������������
angle=20*pi/180; % ���� ��������
tx=0;            % ����� �� x
ty=0;            % ����� �� y

sc=scale*cos(angle);
ss=scale*sin(angle);

T=[ sc -ss; ss  sc; tx  ty];
  
  
t_lc=maketform('affine', T);
I_linearconformal=imtransform(I, t_lc, 'FillValues', .3);
% subplot(332)
% imshow(I_linearconformal);
% title('linear conformal')


imshow(I_linearconformal);