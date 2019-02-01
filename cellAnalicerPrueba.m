function [euler,n0,n1,n2,n3] = cellAnalicerPrueba(inputImage,x,y,z,threshold)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%Inicialización de las subimagenes
subImage1 = inputImage(:,:,z);
n01 = {};
n11 = {};
n21 = {};
n31 = {};
subImage2 = inputImage(:,:,z+1);
n02 = {};
n12 = {};
n22 = {};
n32 = {};
%Para calcular la caracteristica de Euler de la subImagen1
for i = 1: size(subImage1,1)
    for j = 1: size(subImage1,2)
        if subImage1(i,j) >= threshold(1) && subImage1(i,j) <= threshold(2)
            if  not(ismember(num2str([i+x-0.5,j+y-0.5,z-0.5]), n01))
                n01{end +1} = num2str([i+x-0.5,j+y-0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y-0.5,z+0.5]), n01))
                n01{end +1} = num2str([i+x-0.5,j+y-0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y+0.5,z-0.5]), n01))
                n01{end +1} = num2str([i+x-0.5,j+y+0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x-0.5,j+y+0.5,z+0.5]), n01))
                n01{end+1} = num2str([i+x-0.5,j+y+0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y-0.5,z-0.5]), n01))
                n01{end+1} = num2str([i+x+0.5,j+y-0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y-0.5,z+0.5]), n01))
                n01{end+1} = num2str([i+x+0.5,j+y-0.5,z+0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y+0.5,z-0.5]), n01))
                n01{end+1} = num2str([i+x+0.5,j+y+0.5,z-0.5]);
            end
            if  not(ismember(num2str([i+x+0.5,j+y+0.5,z+0.5]), n01))
                n01{end+1} = num2str([i+x+0.5,j+y+0.5,z+0.5]);
            end
            %1-Celdas
            if not(ismember(num2str([i+x,j+y-0.5,z-0.5]),n11))
                n11{end+1} = num2str([i+x,j+y-0.5,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y-0.5,z+0.5]),n11))
                n11{end+1} = num2str([i+x,j+y-0.5,z+0.5]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z-0.5]),n11))
                n11{end+1} = num2str([i+x,j+y+0.5,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z+0.5]),n11))
                n11{end+1} = num2str([i+x,j+y+0.5,z+0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z-0.5]),n11))
                n11{end+1} = num2str([i+x-0.5,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z+0.5]),n11))
                n11{end+1} = num2str([i+x-0.5,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z-0.5]),n11))
                n11{end+1} = num2str([i+x+0.5,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z+0.5]),n11))
                n11{end+1} = num2str([i+x+0.5,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x-0.5,j+y-0.5,z]),n11))
                n11{end+1} = num2str([i+x-0.5,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x-0.5,j+y+0.5,z]),n11))
                n11{end+1} = num2str([i+x-0.5,j+y+0.5,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y-0.5,z]),n11))
                n11{end+1} = num2str([i+x+0.5,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y+0.5,z]),n11))
                n11{end+1} = num2str([i+x+0.5,j+y+0.5,z]);
            end
            %2-Celdas
            if not(ismember(num2str([i+x,j+y,z-0.5]),n21))
                n21{end+1} = num2str([i+x,j+y,z-0.5]);
            end
            if not(ismember(num2str([i+x,j+y,z+0.5]),n21))
                n21{end+1} = num2str([i+x,j+y,z+0.5]);
            end
            if not(ismember(num2str([i+x,j+y-0.5,z]),n21))
                n21{end+1} = num2str([i+x,j+y-0.5,z]);
            end
            if not(ismember(num2str([i+x,j+y+0.5,z]),n21))
                n21{end+1} = num2str([i+x,j+y+0.5,z]);
            end
            if not(ismember(num2str([i+x-0.5,j+y,z]),n21))
                n21{end+1} = num2str([i+x-0.5,j+y,z]);
            end
            if not(ismember(num2str([i+x+0.5,j+y,z]),n21))
                n21{end+1} = num2str([i+x+0.5,j+y,z]);
            end
            %3-Celdas
            n31{end+1} = num2str([i+x,j+y,z]);
        end
        if subImage2(i,j) >= threshold(1) && subImage2(i,j) <= threshold(2)
            if  not(ismember(num2str([i+x+1-0.5,j+y+1-0.5,z+1-0.5]), n02))
                n02{end +1} = num2str([i+x+1-0.5,j+y+1-0.5,z+1-0.5]);
            end
            if  not(ismember(num2str([i+x+1-0.5,j+y+1-0.5,z+1+0.5]), n02))
                n02{end +1} = num2str([i+x+1-0.5,j+y+1-0.5,z+1+0.5]);
            end
            if  not(ismember(num2str([i+x+1-0.5,j+y+1+0.5,z+1-0.5]), n02))
                n02{end +1} = num2str([i+x+1-0.5,j+y+1+0.5,z+1-0.5]);
            end
            if  not(ismember(num2str([i+x+1-0.5,j+y+1+0.5,z+1+0.5]), n02))
                n02{end+1} = num2str([i+x+1-0.5,j+y+1+0.5,z+1+0.5]);
            end
            if  not(ismember(num2str([i+x+1+0.5,j+y+1-0.5,z+1-0.5]), n02))
                n02{end+1} = num2str([i+x+1+0.5,j+y+1-0.5,z+1-0.5]);
            end
            if  not(ismember(num2str([i+x+1+0.5,j+y+1-0.5,z+1+0.5]), n02))
                n02{end+1} = num2str([i+x+1+0.5,j+y+1-0.5,z+1+0.5]);
            end
            if  not(ismember(num2str([i+x+1+0.5,j+y+1+0.5,z+1-0.5]), n02))
                n02{end+1} = num2str([i+x+1+0.5,j+y+1+0.5,z+1-0.5]);
            end
            if  not(ismember(num2str([i+x+1+0.5,j+y+1+0.5,z+1+0.5]), n02))
                n02{end+1} = num2str([i+x+1+0.5,j+y+1+0.5,z+1+0.5]);
            end
            %1-Celdas
            if not(ismember(num2str([i+x+1,j+y+1-0.5,z+1-0.5]),n12))
                n12{end+1} = num2str([i+x+1,j+y+1-0.5,z+1-0.5]);
            end
            if not(ismember(num2str([i+x+1,j+y+1-0.5,z+1+0.5]),n12))
                n12{end+1} = num2str([i+x+1,j+y+1-0.5,z+1+0.5]);
            end
            if not(ismember(num2str([i+x+1,j+y+1+0.5,z+1-0.5]),n12))
                n12{end+1} = num2str([i+x+1,j+y+1+0.5,z+1-0.5]);
            end
            if not(ismember(num2str([i+x+1,j+y+1+0.5,z+1+0.5]),n12))
                n12{end+1} = num2str([i+x+1,j+y+1+0.5,z+1+0.5]);
            end
            if not(ismember(num2str([i+x+1-0.5,j+y+1,z+1-0.5]),n12))
                n12{end+1} = num2str([i+x+1-0.5,j+y+1,z+1-0.5]);
            end
            if not(ismember(num2str([i+x+1-0.5,j+y+1,z+1+0.5]),n12))
                n12{end+1} = num2str([i+x+1-0.5,j+y+1,z+1+0.5]);
            end
            if not(ismember(num2str([i+x+1+0.5,j+y+1,z+1-0.5]),n12))
                n12{end+1} = num2str([i+x+1+0.5,j+y+1,z+1-0.5]);
            end
            if not(ismember(num2str([i+x+1+0.5,j+y+1,z+1+0.5]),n12))
                n12{end+1} = num2str([i+x+1+0.5,j+y+1,z+1+0.5]);
            end
            if not(ismember(num2str([i+x+1-0.5,j+y+1-0.5,z+1]),n12))
                n12{end+1} = num2str([i+x+1-0.5,j+y+1-0.5,z+1]);
            end
            if not(ismember(num2str([i+x+1-0.5,j+y+1+0.5,z+1]),n12))
                n12{end+1} = num2str([i+x+1-0.5,j+y+1+0.5,z+1]);
            end
            if not(ismember(num2str([i+x+1+0.5,j+y+1-0.5,z+1]),n12))
                n12{end+1} = num2str([i+x+1+0.5,j+y+1-0.5,z+1]);
            end
            if not(ismember(num2str([i+x+1+0.5,j+y+1+0.5,z+1]),n12))
                n12{end+1} = num2str([i+x+1+0.5,j+y+1+0.5,z+1]);
            end
            %2-Celdas
            if not(ismember(num2str([i+x+1,j+y+1,z+1-0.5]),n22))
                n22{end+1} = num2str([i+x+1,j+y+1,z+1-0.5]);
            end
            if not(ismember(num2str([i+x+1,j+y+1,z+1+0.5]),n22))
                n22{end+1} = num2str([i+x+1,j+y+1,z+1+0.5]);
            end
            if not(ismember(num2str([i+x+1,j+y+1-0.5,z+1]),n22))
                n22{end+1} = num2str([i+x+1,j+y+1-0.5,z+1]);
            end
            if not(ismember(num2str([i+x+1,j+y+1+0.5,z+1]),n22))
                n22{end+1} = num2str([i+x+1,j+y+1+0.5,z+1]);
            end
            if not(ismember(num2str([i+x+1-0.5,j+y+1,z+1]),n22))
                n22{end+1} = num2str([i+x+1-0.5,j+y+1,z+1]);
            end
            if not(ismember(num2str([i+x+1+0.5,j+y+1,z+1]),n22))
                n22{end+1} = num2str([i+x+1+0.5,j+y+1,z+1]);
            end
            %3-Celdas
            n32{end+1} = num2str([i+x+1,j+y+1,z+1]);
        end
    end
end


%Caracteristica de Euler de las subImagenes
euler1 = size(n01) - size(n11) + size(n21) - size(n31);
euler2 = size(n02) - size(n12) + size(n22) - size(n32);

%Caracteristica de Euler de la interseccion de las subimagenes
n0Intersect = intersect(n01,n02);
n1Intersect = intersect(n11,n12);
n2Intersect = intersect(n21,n22);
n3Intersect = intersect(n31,n32);

eulerIntersec = size(n0Intersect) - size(n1Intersect) + size(n2Intersect) - size(n3Intersect);

%Caracteristica de Euler final
euler = euler1 + euler2 - eulerIntersec;
euler = euler(2);

n0 = union(n01,n02);
n1 = union(n11,n12);
n2 = union(n21,n22);
n3 = union(n31,n32);
end

