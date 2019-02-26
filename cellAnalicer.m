function [euler,n0,n1,n2,n3] = cellAnalicer(inputImage,x,y,z,threshold)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%Inicialización de las subimagenes
subImage = inputImage(:,:,z);
n0 = {};
n1 = {};
n2 = {};
n3 = {};
%Para calcular la caracteristica de Euler de la subImagen
for i = 1: size(subImage,1)
    for j = 1: size(subImage,2)
        if subImage(i,j) >= threshold(1) && subImage(i,j) <= threshold(2)
            if  not(ismember(num2str([i+x-0.5,j+y-0.5,z-0.5]), n0))
                n0{end +1} = num2str([i+x-0.5,j+y-0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y-0.5,z+0.5]), n0))
                n0{end +1} = num2str([i+x-0.5,j+y-0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y+0.5,z-0.5]), n0))
                n0{end +1} = num2str([i+x-0.5,j+y+0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y+0.5,z+0.5]), n0))
                n0{end+1} = num2str([i+x-0.5,j+y+0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y-0.5,z-0.5]), n0))
                n0{end+1} = num2str([i+x+0.5,j+y-0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y-0.5,z+0.5]), n0))
                n0{end+1} = num2str([i+x+0.5,j+y-0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y+0.5,z-0.5]), n0))
                n0{end+1} = num2str([i+x+0.5,j+y+0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y+0.5,z+0.5]), n0))
                n0{end+1} = num2str([i+x+0.5,j+y+0.5,z+0.5]);
            end
            %1-Celdas
            if not(ismember(num2str([i+x,j+y-0.5,z-0.5]),n1))
                n1{end+1} = num2str([i+x,j+y-0.5,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y-0.5,z+0.5]),n1))
                n1{end+1} = num2str([i+x,j+y-0.5,z+0.5]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z-0.5]),n1))
                n1{end+1} = num2str([i+x,j+y+0.5,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z+0.5]),n1))
                n1{end+1} = num2str([i+x,j+y+0.5,z+0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z-0.5]),n1))
                n1{end+1} = num2str([i+x-0.5,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z+0.5]),n1))
                n1{end+1} = num2str([i+x-0.5,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z-0.5]),n1))
                n1{end+1} = num2str([i+x+0.5,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z+0.5]),n1))
                n1{end+1} = num2str([i+x+0.5,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y-0.5,z]),n1))
                n1{end+1} = num2str([i+x-0.5,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x-0.5,j+y+0.5,z]),n1))
                n1{end+1} = num2str([i+x-0.5,j+y+0.5,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y-0.5,z]),n1))
                n1{end+1} = num2str([i+x+0.5,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y+0.5,z]),n1))
                n1{end+1} = num2str([i+x+0.5,j+y+0.5,z]);
            end
            %2-Celdas
            if not(ismember(num2str([i+x,j+y,z-0.5]),n2))
                n2{end+1} = num2str([i+x,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y,z+0.5]),n2))
                n2{end+1} = num2str([i+x,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x,j+y-0.5,z]),n2))
                n2{end+1} = num2str([i+x,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z]),n2))
                n2{end+1} = num2str([i+x,j+y+0.5,z]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z]),n2))
                n2{end+1} = num2str([i+x-0.5,j+y,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z]),n2))
                n2{end+1} = num2str([i+x+0.5,j+y,z]);
            end
            %3-Celdas
            n3{end+1} = num2str([i+x,j+y,z]);
        end
    end
end

euler = size(n0) - size(n1) + size(n2) - size(n3);

euler = euler(2);

end

