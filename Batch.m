function [s] = Batch(mode)
mode_ = strcat('\**\',strcat(mode,'\*.gif'));
im_path_list = dir(strcat(string(uigetdir),mode_));%手动选择名为‘数据集’
%im_path_list = dir('C:\Users\Eternal\Documents\MATLAB\project1\数据集\**\*.gif'); % 
im_num = length(im_path_list);

for i= 1:im_num
    im_name = im_path_list(i).name;
    im_folder = im_path_list(i).folder;
    s{1,i} = imread(strcat(strcat(im_folder,'\'),im_name));
    s{1,i} = im2bw(s{1,i},graythresh(s{1,i}));%to bw
    s{6,i} = im_path_list(i).name;
    
end
end
