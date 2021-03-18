function [a] = get_test

[file path] = uigetfile;
test = imread(strcat(path,file));
a{1,1} = imresize(im2bw(test,graythresh(test)),[32 32]);
a{2,1} = catch_shape(a{1,1});
a{3,1} = length(a{2,1});
a{4,1} = character(a{2,1});
a{5,1} = im2bw(test,graythresh(test));
a{6,1} = file;