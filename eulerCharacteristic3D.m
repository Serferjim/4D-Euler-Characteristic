function euler = eulerCharacteristic3D(inputImage,threshold)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
euler = 0;
x = 0;
y = 0;
inputImage = nrrdread(inputImage);
inputImage = uint8(inputImage);
n0Prime = {};
n1Prime = {};
n2Prime = {};
n3Prime = {};
f = waitbar(0,'Calculating...');
tic;
for z = 1 : size(inputImage,3) -1
    waitbar(z/size(inputImage,3),f,sprintf('%12.0f',z))
    [newEuler,n0,n1,n2,n3] = cellAnalicer(inputImage,x,y,z,threshold);
    eulerIntersec = size(intersect(n0Prime,n0),1) - size(intersect(n1Prime,n1),1) + size(intersect(n2Prime,n2),1) - size(intersect(n3Prime,n3),1);
    n0Prime = n0;
    n1Prime = n1;
    n2Prime = n2;
    n3Prime = n3;
    euler = euler + newEuler - eulerIntersec;
    x = x + 1;
    y = y + 1;
end
delete(f);
toc;
end

