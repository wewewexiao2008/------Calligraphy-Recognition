function a = isClose(A,B)
dis = sqrt((A(1)-B(1))^2+(A(2)-B(2))^2);
a = (dis<=0.3*32);