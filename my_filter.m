function [B]  = my_filter(A)
[r c] = size(A);
B = A;
if A(:,:)<2
    B(:,:) = 0;%用于处理0/0得NaN无法计算的情况
end
