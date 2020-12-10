%%% Practica 3

%% Aplicaciones Lineales
% -------------------------------
%% Ejercicio 1.3
M3=[1 2 3 4; 5 6 7 8; 2 4 6 8]
% Calcular el rango de f
rang3o=rank(M3) %rango 2
% Calcula una base de ker f y una base de Im f. Clasificar f 
nucleo3=null(sym(M3))  % Bker= {(1-2 1 0),(2 -3 0 1)}  NO ES INYECTIVA
imagen3=colspace(sym(M3)) % Bimf={(1 0 2),(0 1 0)}    NO ES SUPRAYECTIVA
% Calcula f((2/3,1/5,-3,4))
v3=[2/3;1/5;-3;4] 
imfv3=M3*v3 % Imagen del vector v= (8.0667, 15.5333, 16.1333)
% Demuestra que C'={(-2,3,1/2),(1,-1,3),(0,2,-3)} es una base de R3. Calcula
% la matriz de f en la base canonica de R4 y la base C'
Q3=[-2 1 0;3 -1 2; 1/2 3 -3]
rank(Q3) %rango 3= dim R3 por lo tanto C' es base de R3
P3=inv(Q3)*M3

% Demuestra que B'={(1,1,1,1),(1,-1,-1,1),(1,0,0,2),(3,0,1,1)
P=[1 1 1 3; 1 -1 0 0; 1 -1 0 1; 1 1 2 1];
rank(P) %rango =4 (al ser 4 libres forman una base)
matrizNueva=M3*P
% Calcula la matriz de f en las bases B' y C'
format short
matrizNueva2=inv(Q3)*M3*P

%% Ejercicio 1.4
% Calcula una base del nucleo, ker y una base de la imagen
B=[1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1]
M4=[1 2 3 4; 5 6 7 8; 2 4 6 8]
nucleo4=null(sym(M4)) %base ker={(1 -2 1 0), (2 -3 0 1)}
imagen=colspace(sym(M4)) %base imagen={(1+x*2,x)}
% Calcula f(2/3, 1/5, -3, 4)
v4=[2/3;1/5;-3;4]
imfv4=M4*v4 % Imagen del vector v= (8.0667, 15.5333x, 16.1333x^2)
