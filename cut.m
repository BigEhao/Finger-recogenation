for a = 1:4
    for b = 1:10
    s1=strcat('E:\ͼ����������Ӿ�\590\�豸2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
    Input = imread(s1);
    FingerImg = input2FingerImg(Input);
    figure
    imshowpair(FingerImg,Input,'montage')
    s2=strcat('E:\ͼ����������Ӿ�\590\�и�2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
    imwrite(FingerImg,s2)
    end
end



