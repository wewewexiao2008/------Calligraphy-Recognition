function [s] = character(S)
s = zeros(length(S),32,1);
for i = 1:length(S)
    for j = 1:length(S)
        s(i,my_area(i,j,S),1) = s(i,my_area(i,j,S),1)+1;%¼ÆÊýÆ÷
    end
end
