function [min ,min_cor]= compare_c(Tc ,Sc,T,S)%��������/��Ӧ���� ������һ��ƥ���
min = repmat(100,length(Tc),1);
min_cor = repmat(100,length(Tc),2);
for i = 1:length(Tc)
    for j = 1:length(Sc)
        if(isClose(Tc(i,:),Sc(j,:)))
            C = 0.5*my_sum(((T(i,:)-S(j,:)).*(T(i,:)-S(j,:)))./(T(i,:)+S(j,:)));%�Ƚ������������ƶ�
            
            if C <=min(i,1)
                min(i,1) = C;%test�е�i���� �����ݼ��е�n���ֵ���Сƥ���
                min_cor(i,:) = Sc(j,:);
            end
            
        end
    end
end
