%-- Output, Caracteristica de Euler-Poincare
%-- Input, Imagen (Matriz)
function  [euler] = core(imagen, chaIni)
%CORE Calcula la característica de Euler-Poincare
%   Primeramente, seleccionamos la matriz de datos (imagen), calulamos su
%   dimension y comenzamos con los cálculos necesarios para obtener la
%   característica.

vectores = size(imagen); %Calcula los tamaños de las diferentes dimensiones
dimension=length(vectores); %Dimension de la matriz
euler = chaIni;
if (dimension>3)
    parfor(i=1: dimension)
        subImagen = imagen(:,i);
        temp = core(subImagen, chaIni);
        euler = euler + temp;
    end
else
    for a=1: size(imagen,1)
        for b=1: size(imagen,2)
            %Calculo de las n-celdas
            %TODO
            euler = imagen(a,b) + euler;
        end
    end
end

end

