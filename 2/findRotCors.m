function [ corners,xNegative,yNegative ] = findRotCors(image, rad)
    [mainX,mainY,~] = size(image);
    R =[+cos(rad) +sin(rad); -sin(rad) +cos(rad)];
    round([1 1;1 mainY;mainX 1;mainX mainY]*R);
    corners = round([1 1;1 mainY;mainX 1;mainX mainY]*R);
    minXY = min(corners);
    xNegative = minXY(1);
    yNegative = minXY(2);
    for i=1:size(corners,1)
        if(xNegative<=0)
             corners(i,:)=corners(i,:)-[xNegative+1,0];
        end
        if(yNegative<=0)
             corners(i,:)=corners(i,:)-[0,yNegative+1];
        end
    end
end


