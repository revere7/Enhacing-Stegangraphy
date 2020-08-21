clc;
clear;

cover_path = 'E:\DATASETS\TestDataset\cover\1\'; 
stego_path = 'E:\DATASETS\TestDataset\stego\2\'; 

% set payload
payload = single(0.4);
% set params
params.p = -1;  % holder norm parameter

h = 8;      % constraint height - default is 10 - drives the complexity/quality tradeof
m = round(n * alpha); % number of message bits
message = uint8(rand(m, 1));
profile = ones(n, 1);

fprintf('Embedding using Matlab file');
MEXstart = tic;

for i=3:length(cover_path) 
    disp(i);
     cover_img_list = dir(cover_path);
     cover_full_path = strcat(cover_path,cover_img_list(i).name);
     cover_img = fullfile(cover_full_path);
          
     cost_map = S_UNIWARD(cover_img, payload); 
     %cost_map = MiPOD(cover_img, payload);
     %cost_map = WOW(cover_img, payload, params);
     %cost_map = HILL(cover_img, payload);
     
     [dist, stego] = stc_embed(cost_map, message, profile, h); % embed message
     imshow(stego);
     imwrite(stego,['E:\DATASETS\TestDataset\test\',int2str(i-2),'.pgm']);
end