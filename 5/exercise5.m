clear
clc
count = input('How many file you are working with:')
createRandomXslFiles('file',count);
all = readXlsFiles('file',count);
xlswrite('allData.xlsx',all);
