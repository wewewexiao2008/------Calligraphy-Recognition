function [B]  = my_filter(A)
[r c] = size(A);
B = A;
if A(:,:)<2
    B(:,:) = 0;%���ڴ���0/0��NaN�޷���������
end
