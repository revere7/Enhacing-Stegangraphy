clc;
clear;


cover_path = 'E:\DATASETS\TestDataset\cover\1\'; 
stego_path = 'E:\DATASETS\TestDataset\stego\2\'; 

[x1,y1] = size(cover_img);
[x2,y2] = size(stego_img);

for i=3:length(cover_path) 
    
     cover_img_list = dir(cover_path);
     cover_full_path = strcat(cover_path,cover_img_list(i).name);
     cover_img = fullfile(cover_full_path);
     
     stego_img_list = dir(stego_path);
     stego_full_path = strcat(stego_path,stego_img_list(i).name);
     cover_img = fullfile(stego_full_path);
     
   for j=3:x1
       for k=3:y1
            dis = sum(abs(cover_img(j,k)-stego_img(m,l)));
       end
   end
    
end

 stego_num=min(dis);
