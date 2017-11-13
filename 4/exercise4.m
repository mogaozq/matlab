clc
clear
points = dlmread('points.txt');
numOfPoints = size(points,1);
x = input('Enter x: ');
y = input('Enter y: ');
k = input('Enter number of neighbors you want to find(k): ');


for i=1:numOfPoints
    dis(i,1) = i;
    dis(i,2) = sqrt( ((x-points(i,1))^2) + ((y-points(i,2))^2) );
end

dis = sortrows(dis,2);

resultFile = fopen('neighbors.txt','w');
fprintf('The Neighbors of point (%d,%d) successfully found and saved in neighbors.txt file. \r\n',x,y);
for i=1:k
    fprintf(resultFile,'p%d: x=%d y=%d \r\n',i,points(dis(i),1),points(dis(i),2));
end
fclose(resultFile);