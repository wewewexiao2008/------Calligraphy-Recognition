function adjust_try(num,thresh,trial,L)
j =2;
for i = 1:trial
    if j< num
        if abs(L(i)-L(1))<thresh
        subplot(5,6,j);
        imshow(set{5,L(i)});
        j = j+1;
        end
    end
end