function [X] = cuboHueco()

%para crear matrices 3d tenemos que crear primero las 2d y despues
%apilarlas segun la posicion que queramos. 
%  a = [1 2 3; 4 5 6; 7 8 10] matriz 3x3 del 1 al 10

a = [0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0];

b = [0 0 0 0 0 0 0 0 0 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 0;0 0 0 0 0 0 0 0 0 0];

c = [0 0 0 0 0 0 0 0 0 0;0 1 1 1 1 1 1 1 1 0;0 1 0 0 0 0 0 0 1 0;0 1 0 0 0 0 0 0 1 0;0 1 0 0 0 0 0 0 1 0;0 1 0 0 0 0 0 0 1 0;0 1 0 0 0 0 0 0 1 0;0 1 0 0 0 0 0 0 1 0;0 1 1 1 1 1 1 1 1 0;0 0 0 0 0 0 0 0 0 0];

X(:,:,1) = a;
X(:,:,2) = b;
X(:,:,3) = c;
X(:,:,4) = c;
X(:,:,5) = c;
X(:,:,6) = c;
X(:,:,7) = c;
X(:,:,8) = c;
X(:,:,9) = b;
X(:,:,10) = a;

end

