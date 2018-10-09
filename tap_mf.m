function mf_tap = tap_mf(x,a,b,c,d)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if(x<a) mf_tap=0;
elseif(x<b && x>=a) mf_tap=(x-a)/(b-a);
elseif(x<c && x>=b) mf_tap=1;
elseif(x<d && x>=c) mf_tap=(d-x)/(d-c);
else mf_tap=0;
end
end
