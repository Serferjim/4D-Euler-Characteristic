function [eulerCharacteristic] = eulerPoincareCharacteristic3D(inputImage, threshold)
%EULERPOINCARECHARACTERISTIC4D Summary of this function goes here
%   Detailed explanation goes here
poolobj = gcp;
imageToAnalize = nrrdread(inputImage);
dimensions = size(imageToAnalize);
%for w=1: size(imageToAnalize,1)
n0 = {};
n1 = {};
n2 = {};
n3 = {};
for x=1: size(imageToAnalize,1)
        [n0,n1,n2,n3] = cellAnalizer(imageToAnalize(x,:,:),x, threshold,n0,n1,n2,n3);
end


%end
eulerCharacteristic = size(n0,2) -size(n1,2) +size(n2,2) - size(n3,2);
delete(poolobj);

end

