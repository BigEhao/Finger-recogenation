for a = 1:4
    for b = 1:10
% a = 1;
% b = 1;
    s1=strcat('.\590\�豸2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
%     s1=strcat('.\590\�豸1\','590.bmp');
    Input = imread(s1);
    FingerImg = input2FingerImg(Input);
    figure
    imshowpair(FingerImg,Input,'montage')
    s2=strcat('.\590\�и�2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
    imwrite(FingerImg,s2)
    end
end



