eq1 = input('Enter coefficients of a First equeation: ');
eq2 = input('Enter coefficients of a Second equeation: ');
size1= size(eq1,2);
size2= size(eq2,2);
if(size1> size2)
    temp =zeros(1,size1);
    for i=1:size2
        temp(1,size1-size2+i)= eq2(i);
    end
    roots = roots(eq1-temp);
elseif(size2>size1)
    temp =zeros(1,size2);
    for i=1:size1
        temp(1,size2-size1+i)= eq1(i);
    end
    roots = roots(temp-eq2);
else
    roots = roots(eq1-eq2);
end
fprintf('\nroots:\n');
for i=1:size(roots,1)
    fprintf('x%d = %f\n',i,roots(i,1));
end
