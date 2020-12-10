%%% Practica 2 

%% Sistemas de ecuaciones lineales
% -------------------------------
%% Ejercicio 3.1
%% En R3 se consideran dos bases B={v1,v2,v3} y B1={w1,w2,w3} tales que:
w1=[3 2 -1];
w2=[4 1 1];
w3=[2 -1 1];
% Calcular las coordenadas en la base B1 del vector u=v1+v2+3v3
P=[3 4 2; 2 1 -1; -1 1 1];
v1=[1;2;3]
v1_prima=inv(P)*v1;
format rat
v1_prima
 % Las coordenadas son (-5/2, 15/4, -13/4)
 % Entregamos u= -5/2w1 +15/4 w2 + 13/4w3
 
% Calcular las coordenadas en la base B del vector v=w1-2w2+w3
P*[1;-2;1]
% Las coordenadas son (-3,-1,-2)
% Entregamos u2= -3w1 -w2 -2w3

%% En R4 sea S1 el subespacio generado por los vectores u1=(1,1,1,1) y u2=(1,-1,1-1)
% y sea S2 el subespacio generado por los vectores v1=(1,1,0,1),
% v2=(1,2,-1,2),v3=(3,5,-2,5).
% Determinar una base y la dimension de los subespacios S1,S2,S1+S2 y S1
% interseccion S2.

u1=[ 1 1 1 1];
u2=[1 -1 1 -1];
v1=[1 1 0 1];
v2=[1 2 -1 2];
v3=[3 5 -2 5];
rref([u1.',u2.',-v1.',-v2.'])
% El sistema queda -1/2, -1/2,-2
