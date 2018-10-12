function [z1 z2 z3 z4 z5 z6] = data2(s)

a=readfis('N:\code\Event_Appraisal');
b=readfis('N:\code\Emotion_Elicitation_new');

for i=1:4309
  x1=s(i,1);
  x2=s(i,2);
  x3=s(i,3);
  x4=s(i,4);
  x5=s(i,5);
  x= [x1 x2 x3 x4 x5];
  y=evalfis(x,a);
  z=evalfis(y,b);
  an(i,:)=z;
  r(i,:)=emotion(z(1),z(2), z(3), z(4), z(5),z(6));
end

save('N:\code\anVal_data2.txt','an','-ASCII');
save('N:\code\anEmo_data2.txt','r','-ASCII');

end


