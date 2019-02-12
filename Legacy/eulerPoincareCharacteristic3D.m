function [eulerCharacteristic] = eulerPoincareCharacteristic3D(inputImage, thresholdRange)
%EULERPOINCARECHARACTERISTIC4D Summary of this function goes here
%   Detailed explanation goes here
imageToAnalize = inputImage;
dimensions = size(imageToAnalize);
%for w=1: size(imageToAnalize,1)
n0 = {};
n1 = {};
n2 = {};
n3 = {};
tic
for x=1: size(imageToAnalize,1)
    for y=1: size(imageToAnalize,2)
        for z=1: size(imageToAnalize,3)
            if imageToAnalize(x,y,z) >= thresholdRange(1) && imageToAnalize(x,y,z) >= thresholdRange(2)
                if  not(ismember(num2str([x-0.5,y-0.5,z-0.5]), n0))
                    n0{end +1} = num2str([x-0.5,y-0.5,z-0.5]);
                end
                if  not(ismember(num2str([x-0.5,y-0.5,z+0.5]), n0))
                    n0{end +1} = num2str([x-0.5,y-0.5,z+0.5]);
                end
                if  not(ismember(num2str([x-0.5,y+0.5,z-0.5]), n0))
                    n0{end +1} = num2str([x-0.5,y+0.5,z-0.5]);
                end
                if  not(ismember(num2str([x-0.5,y+0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x-0.5,y+0.5,z+0.5]);
                end
                if  not(ismember(num2str([x+0.5,y-0.5,z-0.5]), n0))
                    n0{end+1} = num2str([x+0.5,y-0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+0.5,y-0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x+0.5,y-0.5,z+0.5]);
                end
                if  not(ismember(num2str([x+0.5,y+0.5,z-0.5]), n0))
                    n0{end+1} = num2str([x+0.5,y+0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+0.5,y+0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x+0.5,y+0.5,z+0.5]);
                end
                %1-Celdas
                if not(ismember(num2str([x,y-0.5,z-0.5]),n1))
                    n1{end+1} = num2str([x,y-0.5,z-0.5]);
                end
                if not(ismember(num2str([x,y-0.5,z+0.5]),n1))
                    n1{end+1} = num2str([x,y-0.5,z+0.5]);
                end
                if not(ismember(num2str([x,y+0.5,z-0.5]),n1))
                    n1{end+1} = num2str([x,y+0.5,z-0.5]);
                end
                if not(ismember(num2str([x,y+0.5,z+0.5]),n1))
                    n1{end+1} = num2str([x,y+0.5,z+0.5]);
                end
                if not(ismember(num2str([x-0.5,y,z-0.5]),n1))
                    n1{end+1} = num2str([x-0.5,y,z-0.5]);
                end
                if not(ismember(num2str([x-0.5,y,z+0.5]),n1))
                    n1{end+1} = num2str([x-0.5,y,z+0.5]);
                end
                if not(ismember(num2str([x+0.5,y,z-0.5]),n1))
                    n1{end+1} = num2str([x+0.5,y,z-0.5]);
                end
                if not(ismember(num2str([x+0.5,y,z+0.5]),n1))
                    n1{end+1} = num2str([x+0.5,y,z+0.5]);
                end
                if not(ismember(num2str([x-0.5,y-0.5,z]),n1))
                    n1{end+1} = num2str([x-0.5,y-0.5,z]);
                end
                if not(ismember(num2str([x-0.5,y+0.5,z]),n1))
                    n1{end+1} = num2str([x-0.5,y+0.5,z]);
                end
                if not(ismember(num2str([x+0.5,y-0.5,z]),n1))
                    n1{end+1} = num2str([x+0.5,y-0.5,z]);
                end
                if not(ismember(num2str([x+0.5,y+0.5,z]),n1))
                    n1{end+1} = num2str([x+0.5,y+0.5,z]);
                end
                %2-Celdas
                if not(ismember(num2str([x,y,z-0.5]),n2))
                    n2{end+1} = num2str([x,y,z-0.5]);
                end
                if not(ismember(num2str([x,y,z+0.5]),n2))
                    n2{end+1} = num2str([x,y,z+0.5]);
                end
                if not(ismember(num2str([x,y-0.5,z]),n2))
                    n2{end+1} = num2str([x,y-0.5,z]);
                end
                if not(ismember(num2str([x,y+0.5,z]),n2))
                    n2{end+1} = num2str([x,y+0.5,z]);
                end
                if not(ismember(num2str([x-0.5,y,z]),n2))
                    n2{end+1} = num2str([x-0.5,y,z]);
                end
                if not(ismember(num2str([x+0.5,y,z]),n2))
                    n2{end+1} = num2str([x+0.5,y,z]);
                end
                %3-Celdas
                n3{end+1} = [x,y,z];
                
            end
            
        end
        
    end
    eulerCharacteristic = size(n0,2) -size(n1,2) +size(n2,2) - size(n3,2);
end
toc

