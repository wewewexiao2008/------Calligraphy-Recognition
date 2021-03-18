function [C] = my_sum(A)
C = 0;
for i = 1:length(A)
    if A(i)>=0 ||A(i)<0 
        C = C+A(i);
    end
end
C = sum(C);
