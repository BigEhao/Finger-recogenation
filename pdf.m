function pdf(error)
%CREATEFIGURE5(data1)
%  DATA1:  histogram data

%  �� MATLAB �� 26-Mar-2019 21:00:20 �Զ�����

% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ������������������
set(axes1,'FontSize',12,'TickDir','out');

hist(error,10);
title('Histogram of Horizontal Position Errors');
ylabel('The Number of Positioning Errors');
% subplot(3,1,3);
% hist(error_z,10);
% title('Histogram of Vertical Position Errors');
hold off;
xlabel('Position error(cm)');
