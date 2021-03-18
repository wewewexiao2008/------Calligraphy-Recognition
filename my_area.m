function [a] = my_area(i,j,S)
dx = S(j,1)-S(i,1);
dy = S(j,2)-S(i,2);
distance = sqrt(dx^2+dy^2);
co = dx/distance;
si = dy/distance;
ang2 = acos(co);
ang1 = asin(si);
a = 1;
if( ang1>=0 && ang1<pi/4 && ang2>=0 && ang2<pi/4)%1
            if(distance>=2&&distance<=4)
                a = 1;end
            if(distance>=4&&distance<=8)
                a = 2;end
            if(distance>=8&&distance<=16)
                a = 3;end
            if(distance>=16&&distance<=32)
                a = 4;end
            end
if( ang1>=pi/4 && ang1<pi/2 && ang2>=pi/4 && ang2<pi/2)%2
            if(distance>=2&&distance<=4)
                a = 5;end
            if(distance>=4&&distance<=8)
                a = 6;end
            if(distance>=8&&distance<=16)
                a = 7;end
            if(distance>=16&&distance<=32)                
                a = 8;end
            end
if( ang1>=pi/4 && ang1<=pi/2 && ang2>=pi/2 && ang2<=pi*0.75)%3
            if(distance>=2&&distance<=4)
                a = 9;end
            if(distance>=4&&distance<=8)
                a = 10;end
            if(distance>=8&&distance<=16)
                a = 11;end
            if(distance>=16&&distance<=32)  
                a = 12;end
            end
if( ang1>=0 && ang1<pi/4 && ang2>0.75*pi && ang2<=pi)%4
            if(distance>=2&&distance<=4)
                a = 13;end
            if(distance>=4&&distance<=8)
                a = 14;end
            if(distance>=8&&distance<=16)
                a = 15;end
            if(distance>=16&&distance<=32)                
                a = 16;end
            end
if( ang1>=-pi/4 && ang1<0 && ang2>=0.75*pi && ang2<pi)%5
            if(distance>=2&&distance<=4)
                a = 17;end
            if(distance>=4&&distance<=8)
                a = 18;end
            if(distance>=8&&distance<=16)
                a = 19;end
            if(distance>=16&&distance<=32)    
                a = 20;end
            end
if( ang1>=-pi/2 && ang1<-pi/4 && ang2>= pi/2&& ang2<pi*0.75)%6
            if(distance>=2&&distance<=4)
                a = 21;end
            if(distance>=4&&distance<=8)
                a = 22;end
            if(distance>=8&&distance<=16)
                a = 23;end
            if(distance>=16&&distance<=32)      
                a = 24;end
            end
if( ang1>-pi/2 && ang1<=-pi/4 && ang2>= pi/4&& ang2<pi/2)%7
            if(distance>=2&&distance<=4)
                a = 25;end
            if(distance>=4&&distance<=8)
                a = 26;end
            if(distance>=8&&distance<=16)
                a = 27;end
            if(distance>=16&&distance<=32)   
                a = 28;end
end
if( ang1>-pi/4 && ang1<=0 && ang2>= 0&& ang2<pi/4)%8
            if(distance>=2&&distance<=4)
                a = 29;end
            if(distance>=4&&distance<=8)
                a = 30;end
            if(distance>=8&&distance<=16)
                a = 31;end
            if(distance>=16&&distance<=32)   
                a = 32;end
end