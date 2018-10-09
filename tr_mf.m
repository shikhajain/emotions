function mf = tr_mf(x,a,b,c)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if(x<a) mf=0;
elseif(x<=b && x>=a) mf=(x-a)/(b-a);
elseif(x<=c && x>=b) mf=(c-x)/(c-b);
else mf=0;
end
end


%