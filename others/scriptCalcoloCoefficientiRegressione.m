
speed=table2array(brakes(:,1));
stopdistance=table2array(brakes(:,2));
p=polyfit(speed,stopdistance,1);
f=@(x) p(1)*x+p(2);
x=min(speed)-1:0.1:max(speed)+1;
y=f(x);
plot(speed,stopdistance,'o',x,y)