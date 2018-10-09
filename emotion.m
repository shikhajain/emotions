function [emo] = emotion(x1,x2,x3,x4)

[r1] = emo_val(x1);
[r2] = emo_val(x2);
[r3] = emo_val(x3);
[r4] = emo_val(x4);

 
r = [[r1]
    [r2]
    [r3]
    [r4]];

c=0;
for i= 1:4
    x(i)=0;
    for j = 1:5
     if ( r(i,6-j) >0.5 )
         x(i)=6-j;
     end  
    end
    if (x(i) == 0)
        c=c+1;
        y(c)= i;    % value of i = 1-Happy, 2-sad, 3-fear, 4-anger
    end 
end

if(c==1)
    for j = 1:5
     if ( r(y(c),6-j)== 0.5 )
         x(y(c))=6-j;
         break;
     end  
    end
    
end

if (c==2)
    for j = 1:5
     if ( r(y(c),6-j)== r(y(c-1),6-j) && r(y(c),6-j)==0.5 )
         x(y(c))=6-j;
         x(y(c-1))=6-j;
         break;
     end  
    end
    if (x(y(c)) == 0)
        for j = 1:5
            if ( r(y(c),6-j)== 0.5 )
                x(y(c))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-1),6-j)== 0.5 )
                x(y(c-1))=6-j;
                break;
            end
        end
    end
end
    
if (c==3)
    for j = 1:5
     if ( r(y(c),6-j)== r(y(c-1),6-j) && r(y(c),6-j)==0.5 && r(y(c),6-j)== r(y(c-2),6-j) )
         x(y(c))=6-j;
         x(y(c-1))=6-j;
         x(y(c-2))=6-j;
         break;
     end  
    end
    if (x(y(c)) == 0)
        for j = 1:5
            if ( r(y(c),6-j)== 0.5 )
                x(y(c))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-1),6-j)== 0.5 )
                x(y(c-1))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-2),6-j)== 0.5 )
                x(y(c-2))=6-j;
                break;
            end
        end
    end
end
    
if (c==4)
    for j = 1:5
     if ( r(y(c),6-j)== r(y(c-1),6-j) && r(y(c),6-j)==0.5 && r(y(c),6-j)== r(y(c-2),6-j) && r(y(c),6-j)== r(y(c-3),6-j)  )
         x(y(c))=6-j;
         x(y(c-1))=6-j;
         x(y(c-2))=6-j;
         x(y(c-3))=6-j;
         break;
     end  
    end
    if (x(y(c)) == 0)
        for j = 1:5
            if ( r(y(c),6-j)== 0.5 )
                x(y(c))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-1),6-j)== 0.5 )
                x(y(c-1))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-2),6-j)== 0.5 )
                x(y(c-2))=6-j;
                break;
            end
        end
        for j = 1:5
            if ( r(y(c-3),6-j)== 0.5 )
                x(y(c-3))=6-j;
                break;
            end
        end
    end
end

m_emo=max(x);

for i =1:4
    emo(i) = 0;
end

i=1;

if(m_emo == x(1))
    emo(i) = 1;
    i=i+1;
end
if(m_emo == x(2))
    emo(i) =  2;
    i=i+1;
end
if(m_emo == x(3))
    emo(i) = 3;
    i=i+1;
end
if(m_emo == x(4))
    emo(i) = 4;
    i=i+1;
end

end



