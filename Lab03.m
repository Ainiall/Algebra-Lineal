%%% Practica 2 

%% Sistemas de ecuaciones lineales
% -------------------------------
%% Ejercicio 2.2
a=[2 3 4 -1 1];
b=[3 4 7 -2 -1];
c=[1 3 -1 1 8];
d=[0 5 5 -1 4];

V=[a;b;c;d];
rref(V)
format rat % corta las matrices
rref(V)
rank(V) % dim (V)=3
% Para elegir una base siempre en la escalera
B=[1 0 0 0 0; 0 1 0 1/5 11/5; 0 0 1 -2/5 -7/5]

u=[-3 1 0 1 1];
v=[-3 5 5 -1 4];
% M=[V,u];
% rank(M); %dim(M)= not consistant
% N=[V,v];
% rank(M); %dim(M)=3

%% Ejercicio 2.4
a1=[1 -1 3 2 5];
a2=[1 1 1 2 3];
a3=[1 0 1 -1 2];

F=[a1;a2;a3];

b1=[13 2 3 8 8];
b2=[17 3 3 10 9];

G=[b1;b2];

rref(F) % libres 3
rref(G) % libres 2 
rank(F) % libres 3 -> en este caso sirve
rank(G) % libres 2 -> vale cualquiera de las 2
Bg=[b1;b2];
Bf=[a1;a2;a3];
suma=[F;G];
rref(suma) % se ve que tiene 1 CL
rank(suma) % rango 4 
% se elige la base en la salida de rref
% u1 u2 u3+2u5 u5
Bsuma=[1 0 0 0 0; 0 1 0 0 1; 0 0 1 0 2; 0 0 0 1 0];

%%

