x=0:0.05*pi:4*pi;
ulitka= 2 - 1.7*sin(x);

ulitka1 = -1.7*cos(x);
ulitka2 = 1.7*sin(x);



[rows, cols] = size(ulitka); % cols - ���������� ���������� 


h=1;    % ���������� ��� �����

% ������ ����������� =======================================
% �������� ������� A
A = zeros(cols, cols);
for i=1:1:cols
     if(i-1>0)
         A(i, i-1) = 1/6;
     end
     A(i, i) = 2/3;
     if(i+1<cols)
         A(i, i+1) = 1/6;
     end
end
A(1,1) = 5/6;
A(cols,cols) = 5/6;


% �������� ������� b
b = zeros(1, cols);
for i=1:1:cols
    if(i==1)
        b(i) = (ulitka(i+1) - ulitka(i)) / 2*h;
    elseif(i==cols)
        b(i) = (ulitka(i) - ulitka(i-1)) / 2*h;
    else
        b(i) = (ulitka(i+1) - ulitka(i-1)) / 2*h;
    end
end


X = A/b;
X = X';




% ������ ����������� =======================================
% �������� ������� A
A = zeros(cols, cols+2);
for i=1:1:cols
    A(i, i) = 1/12;
    A(i, i+1) = 5/6;
    A(i, i+2) = 1/12;
end
A = A(:, 2:cols+1);
A(1,1) = 11/12;
A(cols,cols) = 11/12;
 
 
% �������� ������� b
b = zeros(1, cols);
for i=1:1:cols
    if(i==1)
        b(i) = (ulitka(i) - 2*ulitka(i) + ulitka(i+1)) / (h*h);
    elseif(i==cols)
        b(i) = (ulitka(i-1) - 2*ulitka(i) + ulitka(i)) / (h*h);
    else
        b(i) = (ulitka(i-1) - 2*ulitka(i) + ulitka(i+1)) / (h*h);
    end
end


Y = A/b;
Y = Y';






subplot(2,2,1);
polar(x, ulitka1);

subplot(2,2,2);
polar(x, X);

subplot(2,2,3);
polar(x, ulitka2);
 
subplot(2,2,4);
polar(x, Y);
