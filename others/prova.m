function fp=prova(tabella,col1,col2)
data1=table2array(tabella(:,col1));
data2=table2array(tabella(:,col2));
coefficiente=corrcoef(data1,data2);
disp("la matrice di correlazione e'")
disp(coefficiente)
xlabel('data1')
ylabel('data2')
plot(data1,data2,'x')
end