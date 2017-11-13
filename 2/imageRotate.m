function [ rotatedImage ] = imageRotate( image, degree )
rad = degree*pi/180;
[rotatedCorners,xNegative,yNegative] = findRotCors(image,rad);
rotatedImage = zeros([max(rotatedCorners) 3],'uint8');
[mainX,mainY,mainZ] = size(image);
R =[+cos(rad) +sin(rad); -sin(rad) +cos(rad)];
  
for i=1:mainX
    for j=1:mainY
        for z=1:mainZ 
            xneg=0;
            yneg=0;
            if(xNegative<=0)
                xneg = xNegative;
            end
            if(yNegative<=0)
                yneg = yNegative ;
            end
            rotatedPoint = round([i j]*R)-[xneg-1 yneg-1] ;
            rotatedImage(rotatedPoint(1),rotatedPoint(2),z) =image(i,j,z);
        end
    end
end

end

