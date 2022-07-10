clear
clc
pkg load statistics

n=27;
media=30;
devS=3;
ptot=0.0;

for i=1:3
  ptot+=normpdf(i,media,devS);
end
disp(ptot)