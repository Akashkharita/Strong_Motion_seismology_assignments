% Contour data

M =xlsread('contour');
[r,c] = size(M);
lat = M(3:r,1);
long = M(3:r,2);
PGA_longitude = M(3:r,3);
PGA_trans = M(3:r,4);

[LAT, LONG] = meshgrid((min(lat)):0.05:(max(lat)), (min(long)):0.05:(max(long)));
[X,Y,Z] = griddata(lat,long,PGA_longitude,LAT,LONG,'cubic');

contour(X,Y,Z,'ShowText','on')
% contourf(X,Y,Z,100,'LineStyle', 'none')
hold on
plot(lat,long,'r*','LineWidth', 2.5);

