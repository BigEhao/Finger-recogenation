aaa=1;
for a = 4
    for b = 1:10  
            s1=strcat('E:\ͼ����������Ӿ�\590\��ֵ��1\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
            Input = imread(s1);
            % Input = ~Input;
            Input = uint8(Input);
            Input(Input>0)=255;

            GabOut = gaborfilter2(Input, 0.035, 0.8, 0, 0);
            % gaborArray = gabor([4 8],[0 90]);
            % GabOut = imgaborfilt(Input,gaborArray);
%             figure
            % imshow(GabOut)
%             imshowpair(GabOut,Input,'montage')
            s2=strcat('E:\ͼ����������Ӿ�\590\gabor1\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
            imwrite(GabOut,s2)
            fprintf('ִ�д��� %d .\n', aaa);
            aaa = aaa + 1;
    end
end