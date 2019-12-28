function FingerImg = input2FingerImg(Input)
% ����ͼƬ�������ȡ����ָͼ��

Input = rgb2gray(Input);
% figure
% imshow(Input)

% �����ߺ���ת�Ƕ�
[ImgAngle,~,~,~] = img2deg(Input);

% ��תͼƬ
RotatingImg = imrotate(Input,ImgAngle,'bilinear','crop');
% figure
% imshow(RotatingImg);

% �ٴ�������
[~, AverageOfMidLineY, ~, FingerWidth] = img2deg(RotatingImg);

FingerImg = RotatingImg(AverageOfMidLineY - FingerWidth : AverageOfMidLineY + FingerWidth,:);
% figure
% imshow(FingerImg);
