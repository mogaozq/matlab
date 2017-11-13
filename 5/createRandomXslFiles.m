function [ ] = createRandomXslFiles( fileName,count )
    matrisDimentions = randi(10,[count,2]);
    for i=1:count
        randomMatris = rand(matrisDimentions(i,1),matrisDimentions(i,2));
        xlswrite(strcat(strcat(fileName,int2str(i)),'.xlsx'),randomMatris);
    end
end

