function f=corr_data(data1,data2)
f=corrcoef(data1,data2);
disp('la matrice di correlazione e')
disp(f)
plot(data1,data2,'x')
xlabel('data1')
ylabel('data2')
end