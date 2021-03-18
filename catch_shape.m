function  [C] = catch_shape(A)
[r c] = size(A);
C = [];
cnt = 1;
for i = 2:r-1
    for j = 2:c-1
        if (A(i,j)-A(i-1,j))==-1||(A(i,j)-A(i+1,j))==-1||(A(i,j)-A(i,j+1))==-1||(A(i,j)-A(i,j-1))==-1
            C =[C;i j];
            cnt=cnt+1;
        end
    end
end

