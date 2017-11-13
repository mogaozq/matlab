function [ result ] = readXlsFiles( fileName,count )
    result =  xlsread(strcat(strcat(fileName,int2str(1)),'.xlsx'));
    resultSize= size(result);
    for i=2:count
        exelData = xlsread(strcat(strcat(fileName,int2str(i)),'.xlsx'));
        for i=1:size(exelData,1)
            for j=1:size(exelData,2)
            result(resultSize(1)+i,j) = exelData(i,j);
            end
        end
        resultSize = size(result);
    end
end

