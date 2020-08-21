clc;
clear;

costmap_path = 'E:\DATASETS\TestDataset\test\'; 
grad_path = 'E:\DATASETS\TestDataset\test\grad\'; 

h = 8;     
m = round(n * alpha); 
message = uint8(rand(m, 1));
profile = ones(n, 1);

for i=3:length(cover_path) 
    disp(i);
     cover_img_list = dir(cover_path);
     cover_full_path = strcat(cover_path,cover_img_list(i).name);
     cover_img = double(fullfile(cover_full_path));
     
     grad_img_list = dir(cover_path);
     grad_full_path = strcat(grad_path,grad_img_list(i).name);
     grad_img = double(fullfile(grad_full_path));
          
     Inter_map = interset(cost_map,grad_map);
     [dist, stego] = stc_embed(Inter_map, message, profile, h); 
     
     imshow(Inter_map);
     imwrite(Inter_map,['E:\DATASETS\TestDataset\test\Inter\',int2str(i-2),'.pgm']);
end