mode = input('mode select: cao--草书/kai--楷书/**--未知（暂不确定能否使用）：','s');
set = Batch(mode);
for i =1:length(set)
    set{5,i} = set{1,i};% save source
    set{1,i} = imresize(set{1,i},[32 32]);% save low-solution
    set{2,i} = catch_shape(set{1,i}); % save outline
    set{3,i} = length(set{2,i});    % number of pixels in 'outline'
    set{4,i} = character(set{2,i}); % characteristic value of each pixel↑
end
save('Processed.mat','set');