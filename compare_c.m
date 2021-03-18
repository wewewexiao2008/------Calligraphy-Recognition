function [min ,min_cor]= compare_c(Tc ,Sc,T,S)%传入坐标/对应属性 ，返回一列匹配度
min = repmat(100,length(Tc),1);
min_cor = repmat(100,length(Tc),2);
for i = 1:length(Tc)
    for j = 1:length(Sc)
        if(isClose(Tc(i,:),Sc(j,:)))
            C = 0.5*my_sum(((T(i,:)-S(j,:)).*(T(i,:)-S(j,:)))./(T(i,:)+S(j,:)));%比较轮廓像素相似度
            
            if C <=min(i,1)
                min(i,1) = C;%test中第i个点 在数据集中第n个字的最小匹配度
                min_cor(i,:) = Sc(j,:);
            end
            
        end
    end
end
