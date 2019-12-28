for a = 1:4
        for b = 1:10
%         a = 1;
%         b = 1;
        s1=strcat('E:\ͼ����������Ӿ�\590\�и�2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
        Input = imread(s1);

        HisteqOutput = histeq(Input);
        % figure
        % imshowpair(Input,HisteqOutput,'montage')

        adapthisteqOutput = adapthisteq(HisteqOutput,'clipLimit',0.02,'Distribution','rayleigh');
        % figure
        % imshowpair(Input,adapthisteqOutput,'montage')

        mat2grayOutput = mat2gray(adapthisteqOutput);
        % imshowpair(mat2grayOutput,adapthisteqOutput,'montage')
        s2=strcat('E:\ͼ����������Ӿ�\590\ͼ����ǿ2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
        imwrite(mat2grayOutput,s2)
        
        BW = imbinarize(mat2grayOutput,'adaptive','ForegroundPolarity','bright','Sensitivity',0.635);
        s3=strcat('E:\ͼ����������Ӿ�\590\��ֵ��2\','590-',num2str(a),'-',num2str(b),'-','1','.bmp'); 
       imwrite(BW,s3)
       
        figure
        imshowpair(mat2grayOutput,BW,'montage')
        end
end
