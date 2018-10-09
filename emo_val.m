function [r] = emo_val(x)


Neutral = tap_mf(x,-30,-10,10,30);
Low  = tr_mf(x,10,30,50);
Medium= tr_mf(x,30,50,70);
High= tr_mf(x,50,70,90);
Vhigh=tap_mf(x, 70,90,110,130);

r= [ Neutral Low Medium High Vhigh];

end