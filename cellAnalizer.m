function [eulerCharacteristic,n0,n1,n2,n3] = cellAnalizer(imageToAnalize,threshold,xdesp,ydesp)
%CELLANALIZER Summary of this function goes here
%   Detailed explanation goes here

n0 = {};
n1 = {};
n2 = {};
n3 = {};
for x=1: size(imageToAnalize,1)
    for y=1: size(imageToAnalize,2)
        for z=1: size(imageToAnalize,3)
            if imageToAnalize(x,y,z) >= threshold
                if  not(ismember(num2str([x+xdesp-0.5,y+ydesp-0.5,z-0.5]), n0))
                    n0{end +1} = num2str([x+xdesp-0.5,y+ydesp-0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+xdesp-0.5,y+ydesp-0.5,z+0.5]), n0))
                    n0{end +1} = num2str([x+xdesp-0.5,y+ydesp-0.5,z+0.5]);
                end
                if  not(ismember(num2str([x+xdesp-0.5,y+ydesp+0.5,z-0.5]), n0))
                    n0{end +1} = num2str([x+xdesp-0.5,y+ydesp+0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+xdesp-0.5,y+ydesp+0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x+xdesp-0.5,y+ydesp+0.5,z+0.5]);
                end
                if  not(ismember(num2str([x+xdesp+0.5,y+ydesp-0.5,z-0.5]), n0))
                    n0{end+1} = num2str([x+xdesp+0.5,y+ydesp-0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+xdesp+0.5,y+ydesp-0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x+xdesp+0.5,y+ydesp-0.5,z+0.5]);
                end
                if  not(ismember(num2str([x+xdesp+0.5,y+ydesp+0.5,z-0.5]), n0))
                    n0{end+1} = num2str([x+xdesp+0.5,y+ydesp+0.5,z-0.5]);
                end
                if  not(ismember(num2str([x+xdesp+0.5,y+ydesp+0.5,z+0.5]), n0))
                    n0{end+1} = num2str([x+xdesp+0.5,y+ydesp+0.5,z+0.5]);
                end
                %1-Celdas
                if not(ismember(num2str([x+xdesp,y+ydesp-0.5,z-0.5]),n1))
                    n1{end+1} = num2str([x+xdesp,y+ydesp-0.5,z-0.5]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp-0.5,z+0.5]),n1))
                    n1{end+1} = num2str([x+xdesp,y+ydesp-0.5,z+0.5]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp+0.5,z-0.5]),n1))
                    n1{end+1} = num2str([x+xdesp,y+ydesp+0.5,z-0.5]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp+0.5,z+0.5]),n1))
                    n1{end+1} = num2str([x+xdesp,y+ydesp+0.5,z+0.5]);
                end
                if not(ismember(num2str([x+xdesp-0.5,y+ydesp,z-0.5]),n1))
                    n1{end+1} = num2str([x+xdesp-0.5,y+ydesp,z-0.5]);
                end
                if not(ismember(num2str([x+xdesp-0.5,y+ydesp,z+0.5]),n1))
                    n1{end+1} = num2str([x+xdesp-0.5,y+ydesp,z+0.5]);
                end
                if not(ismember(num2str([x+xdesp+0.5,y+ydesp,z-0.5]),n1))
                    n1{end+1} = num2str([x+xdesp+0.5,y+ydesp,z-0.5]);
                end
                if not(ismember(num2str([x+xdesp+0.5,y+ydesp,z+0.5]),n1))
                    n1{end+1} = num2str([x+xdesp+0.5,y+ydesp,z+0.5]);
                end
                if not(ismember(num2str([x+xdesp-0.5,y+ydesp-0.5,z]),n1))
                    n1{end+1} = num2str([x+xdesp-0.5,y+ydesp-0.5,z]);
                end
                if not(ismember(num2str([x+xdesp-0.5,y+ydesp+0.5,z]),n1))
                    n1{end+1} = num2str([x+xdesp-0.5,y+ydesp+0.5,z]);
                end
                if not(ismember(num2str([x+xdesp+0.5,y+ydesp-0.5,z]),n1))
                    n1{end+1} = num2str([x+xdesp+0.5,y+ydesp-0.5,z]);
                end
                if not(ismember(num2str([x+xdesp+0.5,y+ydesp+0.5,z]),n1))
                    n1{end+1} = num2str([x+xdesp+0.5,y+ydesp+0.5,z]);
                end
                %2-Celdas
                if not(ismember(num2str([x+xdesp,y+ydesp,z-0.5]),n2))
                    n2{end+1} = num2str([x+xdesp,y+ydesp,z-0.5]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp,z+0.5]),n2))
                    n2{end+1} = num2str([x+xdesp,y+ydesp,z+0.5]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp-0.5,z]),n2))
                    n2{end+1} = num2str([x+xdesp,y+ydesp-0.5,z]);
                end
                if not(ismember(num2str([x+xdesp,y+ydesp+0.5,z]),n2))
                    n2{end+1} = num2str([x+xdesp,y+ydesp+0.5,z]);
                end
                if not(ismember(num2str([x+xdesp-0.5,y+ydesp,z]),n2))
                    n2{end+1} = num2str([x+xdesp-0.5,y+ydesp,z]);
                end
                if not(ismember(num2str([x+xdesp+0.5,y+ydesp,z]),n2))
                    n2{end+1} = num2str([x+xdesp+0.5,y+ydesp,z]);
                end
                %3-Celdas
                n3{end+1} = num2str([x+xdesp,y+ydesp,z]);
                
            end
            
        end
        
    end
end
eulerCharacteristic = size(n0,2) - size(n1,2) + size(n2,2) - size(n3,2);
