clear
a=0;
b=0;
for x=1:20
    a=binopdf(x,20,0.03);
    b=b+a;
end
disp(b)
probPuntoB=binopdf(3,10,b);
disp(probPuntoB)