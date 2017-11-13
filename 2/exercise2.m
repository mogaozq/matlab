clear
clc

image = imread('images\pic.jpg');
degree = input('Enter the angle you want to rotate you image:');
rotatedImage = imageRotate(image,degree);

figure();
 imshow(image);
 
figure();
 imshow(rotatedImage);
