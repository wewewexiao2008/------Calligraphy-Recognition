clear all;
close all;
clc;
l = load('Processed.mat');
set = l.set;
test = get_test;
tmp = zeros(length(set),1);
 for n = 1:length(set)
     [min,min_cor] =compare_c(test{2,1},set{2,n},test{4,1},set{4,n});
     dis = 0;
     for m = 1:length(test{2,1})
         dis = dis+(norm(test{2,1}(m,:)-min_cor(m,:)))^2;
     end
     alpha = 0.1;
     tmp(n,1) = sum(min)+alpha*dis;

 end
[B,L] = sort(tmp);

num = input('type in num:');
threshold = input('type in threshold:');
trial = input('type in try times:');
subplot(6,6,1)
imshow(test{5,1});

j =2;
for i = 1:trial
    if j<=num
        if abs(L(i)-L(1))<threshold %在检索区间内才展示
        subplot(5,6,j);
        
        imshow(set{5,L(i)});
        title(set{6,L(i)});
        j = j+1;
        end
    end
end