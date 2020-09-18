clc;
clear all;
M =xlsread('contour');
[r,c] = size(M);
lat = M(3:r,1);
long = M(3:r,2);
PGA_longitude = M(3:r,3);
PGA_trans = M(3:r,4);
[LAT, LONG] = meshgrid(linspace(min(lat),max(lat)),linspace(min(long),max(long)));
[Y,X,Z] = griddata(lat,long,PGA_longitude,LAT,LONG,'cubic');
contourm(Y,X,Z,'fill','on')
hold on
scatter(long(2:9),lat(2:9),'ko','filled')
hold on
plot(78.77,30.78,'*')

