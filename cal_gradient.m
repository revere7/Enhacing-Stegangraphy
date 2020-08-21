clc;
clear;

clc;
clear;

cover_path = 'E:\DATASETS\TestDataset\cover\1\'; 
stego_path = 'E:\DATASETS\TestDataset\stego\2\'; 

% set payload
payload = single(0.4);

fprintf('Embedding using Matlab file');
MEXstart = tic;

for i=3:length(cover_path) 
    disp(i);
     cover_img_list = dir(cover_path);
     cover_full_path = strcat(cover_path,cover_img_list(i).name);
     cover_img = double(fullfile(cover_full_path));
     %cost_img=double(dist_img);
          
         ar1 = [0 1 0;0 -1 0;0 0 0];
         ar2 = [1 0 0;0 -2 0;0 0 1];
         ar3 = [-1 0 0 0 0;0 3 0 0 0;0 0 -3 0 0;0 0 0 1 0;0 0 0 0 0];
         ar4 = [-1 2 -1;2 -4 2;0 0 0];
         ar5 = [-1 2 -2 2 -1;2 -6 8 -6 2;-2 8 -12 8 -2;0 0 0 0 0;0 0 0 0 0];

%         aveKernel = fspecial('average',2);
%         aveY1 = conv2(cover_img, aveKernel,'same');
%         aveY2 = conv2(cover_img, aveKernel,'same');
%         ref_img = aveY1(1:Down_step:end,1:Down_step:end);
%         dist_img = aveY2(1:Down_step:end,1:Down_step:end);
 
         IxY1 = conv2(cover_img, ar1, 'same');     
%         IyY1 = conv2(cover_img, ar1, 'same');    
         gradientMap = IxY1;
         %stego = S_UNIWARD(cover_img, payload);
    
     imshow(gradientMap);
     imwrite(gradientMap,['E:\DATASETS\TestDataset\test\grad\',int2str(i-2),'.pgm']);
end

