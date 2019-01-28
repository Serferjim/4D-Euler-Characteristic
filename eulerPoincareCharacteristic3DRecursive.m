function [euler, n0, n1, n2, n3] = eulerPoincareCharacteristic3DRecursive(inputImage,threshold,xdesp,ydesp,isFirst)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if isFirst == "True"
    imageToAnalize = nrrdread(inputImage);
    isFirst = "False";
else
    imageToAnalize = inputImage;
end
dimensions = size(imageToAnalize);

n0 = {};
n1 = {};
n2 = {};
n3 = {};

if(dimensions(1) >= 4 && dimensions(2) >= 4 && dimensions(3) >=4)
    xdespNext = xdesp + round(dimensions(1)/2) + 1;
    ydespNext = ydesp + round(dimensions(1)/2) + 1;
    firstCuarter = ...
        imageToAnalize(1:round(size(imageToAnalize,1)/2),1:round(size(imageToAnalize,2)/2),:);
    secondCuarter = ...
        imageToAnalize(round(size(imageToAnalize,1)/2)+1:size(imageToAnalize,1),1:round(size(imageToAnalize,2)/2),:);
    thirdCuarter = ...
        imageToAnalize(1:round(size(imageToAnalize,1)/2),round(size(imageToAnalize,2)/2)+1:size(imageToAnalize,2),:);
    fourthCuarter = ...
        imageToAnalize(round(size(imageToAnalize,1)/2)+1:size(imageToAnalize,1),round(size(imageToAnalize,2)/2)+1:size(imageToAnalize,2),:);
    [subEuler1,n01,n11,n21,n31] = ...
        eulerPoincareCharacteristic3DRecursive(firstCuarter,threshold,xdesp,ydesp,isFirst);
    cells1 = {n01,n11,n21,n31};
    n0 = union(n0,n01);
    n1 = union(n1,n11);
    n2 = union(n2,n21);
    n3 = union(n3,n31);
    [subEuler2,n02,n12,n22,n32] = ...
        eulerPoincareCharacteristic3DRecursive(secondCuarter,threshold,xdespNext,ydesp,isFirst);
    cells2 = {n02,n12,n22,n32};
    n0 = union(n0,n02);
    n1 = union(n1,n12);
    n2 = union(n2,n22);
    n3 = union(n3,n32);
    [subEuler3,n03,n13,n23,n33] = ...
        eulerPoincareCharacteristic3DRecursive(thirdCuarter,threshold,xdesp,ydespNext,isFirst);
    cells3 = {n03,n13,n23,n33};
    n0 = union(n0,n03);
    n1 = union(n1,n13);
    n2 = union(n2,n23);
    n3 = union(n3,n33);
    [subEuler4,n04,n14,n24,n34] = ...
        eulerPoincareCharacteristic3DRecursive(fourthCuarter,threshold,xdespNext,ydespNext,isFirst);
    cells4 = {n04,n14,n24,n34};
    n0 = union(n0,n04);
    n1 = union(n1,n14);
    n2 = union(n2,n24);
    n3 = union(n3,n34);
    euler = subEuler1(1) + subEuler2(1) + subEuler3(1) + subEuler4(1) ...
        - calculaEulerIntersection1(cells1, cells2)...
        - calculaEulerIntersection1(cells1, cells3)...
        - calculaEulerIntersection1(cells1, cells4)...
        - calculaEulerIntersection1(cells2, cells3)...
        - calculaEulerIntersection1(cells2, cells4)...
        - calculaEulerIntersection1(cells3, cells4)...
        + calculaEulerIntersection2(cells1, cells2, cells3)...
        + calculaEulerIntersection2(cells2, cells3, cells4)...
        + calculaEulerIntersection2(cells3, cells4, cells1)...
        + calculaEulerIntersection2(cells4, cells1, cells2)...
        - calculaEulerIntersection3(cells1, cells2, cells3, cells4);
else
    [euler,n0t,n1t,n2t,n3t] = cellAnalizer(imageToAnalize, threshold, xdesp, ydesp);
    n0 = union(n0,n0t);
    n1 = union(n1,n1t);
    n2 = union(n2,n2t);
    n3 = union(n3,n3t);
end
end


function eulerRes = calculaEulerIntersection1(subImage1, subImage2)
x0 = subImage1{1};
x1 = subImage1{2};
x2 = subImage1{3};
x3 = subImage1{4};

y0 = subImage2{1};
y1 = subImage2{2};
y2 = subImage2{3};
y3 = subImage2{4};

r0 = intersect(x0,y0);
r1 = intersect(x1,y1);
r2 = intersect(x2,y2);
r3 = intersect(x3,y3);

eulerRes = size(r0,1) - size(r1,1) + size(r2,1) - size(r3,1);
end

function eulerRes = calculaEulerIntersection2(subImage1, subImage2, subImage3)
x0 = subImage1{1};
x1 = subImage1{2};
x2 = subImage1{3};
x3 = subImage1{4};

y0 = subImage2{1};
y1 = subImage2{2};
y2 = subImage2{3};
y3 = subImage2{4};

z0 = subImage3{1};
z1 = subImage3{2};
z2 = subImage3{3};
z3 = subImage3{4};

a0 = intersect(x0,y0);
a1 = intersect(x1,y1);
a2 = intersect(x2,y2);
a3 = intersect(x3,y3);

r0 = intersect(a0,z0);
r1 = intersect(a1,z1);
r2 = intersect(a2,z2);
r3 = intersect(a3,z3);

eulerRes = size(r0,1) - size(r1,1) + size(r2,1) - size(r3,1);
end

function eulerRes = calculaEulerIntersection3(subImage1, subImage2, subImage3, subImage4)
x0 = subImage1{1};
x1 = subImage1{2};
x2 = subImage1{3};
x3 = subImage1{4};

y0 = subImage2{1};
y1 = subImage2{2};
y2 = subImage2{3};
y3 = subImage2{4};

z0 = subImage3{1};
z1 = subImage3{2};
z2 = subImage3{3};
z3 = subImage3{4};

w0 = subImage4{1};
w1 = subImage4{2};
w2 = subImage4{3};
w3 = subImage4{3};

a0 = intersect(x0,y0);
a1 = intersect(x1,y1);
a2 = intersect(x2,y2);
a3 = intersect(x3,y3);

b0 = intersect(z0,w0);
b1 = intersect(z1,w1);
b2 = intersect(z2,w2);
b3 = intersect(z3,w3);

r0 = intersect(a0,b0);
r1 = intersect(a1,b1);
r2 = intersect(a2,b2);
r3 = intersect(a3,b3);

eulerRes = size(r0,1) - size(r1,1) + size(r2,1) - size(r3,1);
end