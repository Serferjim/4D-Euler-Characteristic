function euler = eulerCharacteristic3D(inputImage,threshold)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
euler = 0;
x = 0;
y = 0;
%inputImage = nrrdread(inputImage);
inputImage = uint8(inputImage);
n0Prime = {};
n1Prime = {};
n2Prime = {};
n3Prime = {};
voxels = 0;
f = waitbar(0,'Calculating...');
tic;
for z = 1 : size(inputImage,3) -1
    waitbar(z/size(inputImage,3),f,sprintf('%12.0f',z))
    [newEuler,n0,n1,n2,n3] = cellAnalicer(inputImage,x,y,z,threshold);
    eulerIntersec = size(intersect(n0Prime,n0),2) - size(intersect(n1Prime,n1),2) + size(intersect(n2Prime,n2),2) - size(intersect(n3Prime,n3),2);
    n0Prime = n0;
    n1Prime = n1;
    n2Prime = n2;
    n3Prime = n3;
    euler = euler + newEuler - eulerIntersec;
    x = x + 1;
    y = y + 1;
    voxels = voxels + size(n3,2);
end
delete(f);
toc;
end

