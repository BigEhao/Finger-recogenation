function [GABOUT, G]=gaborfilter2(I,S,F,W,P)
%gabor�˲����� 0.0335 0.8 0 0 S,F,���ڴ�С W,PƵ�ʣ���ת�Ƕ�
if isa(I,'double')~=1
    I=double(I);
end
size=fix(1.5/S); % exp(-1.5^2*pi) < 0.1%
% k=2*pi*S^2;
F=S^2/sqrt(2*pi);
k=1;
for x=-size:size            %fΪƵ�ʣ�PΪ��λƫ��
    for y=-size:size
        G(size+x+1,size+y+1)=k*exp(-pi*S^2*(x*x+y*y))*...
            (exp(1i*(2*pi*F*(x*cos(W)+y*sin(W))+P))-exp(-pi*(F/S)^2+1i*P));
    end
end

GABOUT=conv2(I,double(G),'same');
GABOUT(imag(GABOUT)~=0) = real(GABOUT(imag(GABOUT)~=0));
GABOUT(GABOUT<0)=0;
GABOUT = imbinarize(GABOUT);

