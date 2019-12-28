function [ImgAngle, AverageOfMidLineY, MidLine,FingerWidth] = img2deg(Input)
% ����ͼƬ
% �������ָ�йصĲ�����
% ImgAngle, ͼƬ�Ƕ�
% AverageOfMidLineY, ����Yֵƽ��ֵ
% MidLine, ���߲���
% FingerWidth ��ָ����

EdgeImage = edge(Input,'Prewitt');
% figure
% imshowpair(EdgeImage,Input,'montage')

% ȡ��Ե����
[height,weigh] = size(EdgeImage);
MidLineStart = 40;
MidLineEnd = weigh - 150;
MidLineX = MidLineStart;

MidLineArray = zeros(3,weigh-190);

for i = 1  : MidLineEnd-MidLineStart
    MidLineYUp = floor(weigh/2);
    MidLineYDown = floor(weigh/2);
%     ����ѭ��
    while EdgeImage(MidLineYUp,MidLineX) == 0
        MidLineYUp = MidLineYUp - 1;
        if MidLineYUp == 0
%             ����ѭ��
        break
        end
    end  
    while EdgeImage(MidLineYDown,MidLineX) == 0
        MidLineYDown = MidLineYDown+1;
        if MidLineYDown == height;
%             ����ѭ        
        break
        end
    end 
    MidLineX = MidLineX + 1;
    MidLineY = floor((MidLineYUp + MidLineYDown) / 2);
    FingerWidth = floor((MidLineYDown - MidLineYUp) / 2);
%   ���ݾ��󣬸����ĵ�����ΪMidLineX, MidLineY
    MidLineArray(1,i) = MidLineX;
    MidLineArray(2,i) = MidLineY;
    MidLineArray(3,i) = FingerWidth;
end

% ���ֱ��
MidLine = polyfit(MidLineArray(1,:),MidLineArray(2,:),1);
y1 = polyval(MidLine,MidLineArray(1,:));
% figure
% plot(MidLineArray(1,:),MidLineArray(2,:),'o')
% hold on
% figure
% imshow(EdgeImage);
% hold on
% plot(MidLineArray(1,:),y1)
% hold off

% ���б�ʽǶ�
ImgAngle = rad2deg(atan(MidLine(1,1)));
FingerWidth = floor(mean(MidLineArray(3,:))) - 20;
AverageOfMidLineY = mean(y1);


