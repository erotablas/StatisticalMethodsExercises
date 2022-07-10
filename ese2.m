clear
clc
pkg load statistics
x = [15, 14, 17, 10, 13, 16];
media=mean(x);
devS=std(x);
n=6;

p=0.0;
for i=1:n
  p+=normpdf(x(i),media,devS);
end

res = ["la probabilita' e' del ", num2str(p*100), "%"];
disp(res)