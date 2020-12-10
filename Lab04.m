%%% Practica 3

%% Aplicaciones Lineales
% -------------------------------
%% Ejercicio 1.1
% fv1= w1+ 3w2 +w3
% fv2= -2w1 +2w2 -2w3
% fv3= 8w1+2w2+8w3
% fv4= -2w1-2w3
% nos dan las imagenes que son las columnas
M=[1 -2 8 -2; 3 2 2 0; 1 -2 8 -2; 0 0 0 0]

imagen=colspace(sym(M)) % coordenadas por columnas

%% Bimg=[w1+w3,w2];

nucleo=null(sym(M)) % coordenadas de B1 de una base Ker(f) por columnas


null(M) 

v=[1/2;-3;1;0];
M*v

a=[1; 0; -1; 1]
M*a % imagen -9 1 -9 0 a no pertenece al Ker de f
b=[2;-3; 0; 4]
M*b % imagen de b es vector nulo, B pertenece al Ker de F




