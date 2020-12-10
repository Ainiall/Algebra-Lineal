%%% Practica 4

%% Diagonalizacion
% -------------------------------
%% Ejercicio 1.1
% Probar que la matriz A=[5 -2 -1; -2 2 -2; -1 -2 5] es diagonalizable en
% R. Calcular el polinomio caracteristico, los vectores propios, los
% subespacios propios y la matriz regular P que la relaciona con la matriz
% semejante D.
A=[5 -2 -1;-2 2 -2;-1 -2 5]
AS=sym(A)
PA=charpoly(AS) % la salida es un vector simbólico
PA=[ 1, -12, 36, 0] % el polinomio es pA(x) = (?1)3 (x3 ?12x2 + 36x) = ?x3 + 12x2 ?36x

Vp=eig(AS) % calcula sólo los valores propios de A 

[P,D]=eig(AS) % Las columnas de P son vectores propios de A 
% Los valores propios son 0 (simple) y 6 (doble)
% S(0) = <(1,2,1)>, S(6) = <(?2,1,0), (?1,0,1)> %COLUMNAS
M = AS - 0*eye(3) %tambien con M = AS - 6*eye(3)
null(M) 

%% Ejercicio 1.3
L=[0 2 1; 0.5 0 0;0 0.3 0]
LS=sym(L)
% charpoly(LS)
% vl=eig(LS)
[P,D]=eig(LS)

%% Ejercicio 1.6
% Calcular el polinomio caracteristico, los valores propios y los
% subespacios propios de la matriz B.
B=[1 1 -1 1 -1; 0 1 0 0 0; 0 0 1 1 1; 0 0 0 2 1; 0 0 0 0 2]
[P,D]=eig(B)
rank(P) % rango 2, no es una matriz cambio de base
inv(P)*B*P % warning porque no se puede hacer al tener rango 2

[P,J]=jordan(B) % verifica inv(P)*B*P=J
inv(P)*B*P % el resultado es j, correcto
%% Ejercicio 1.6 con simbolico
BS=sym(B)
[P,D]=eig(BS) % el simbolico ya muestra que P no es cuadrada

%% Ejercicio 1.7
% Sea f:R3->R3 una aplicacion lineal tal que dada la base B={e1,e2,e3} de
% R3, esta definida por:
% f(e1)=43/2e1 -39e2 +39e3
% f(e2)=-3/2e1 +5e2 -3e3
% f(e3)=-12e1 +24e2 -22e3
A=[43/2 -3/2 -12; -39 5 24; 39 -3 -22] %nos dan las imagenes que son las columnas
AS=sym(A)
PA=charpoly(AS) % la salida es un vector simbólico
PA=[ 1, -9/2, 6, -2] %el polinomio es pA(x) = (?1)(x3 ?9/2x2 + 6x -2) = ?x3 + 9/2x2 ?6x +2

Vp=eig(AS) % calcula sólo los valores propios de A 

[P,D]=eig(AS) 
% Los valores propios son 1/2 (simple) y 2 (doble)
% S(1/2) = <1/2e1 -e2 +e3>, S(2) = <1/13e1 +e2, 8/13e1 +e3> %COLUMNAS DE P
% F ES DIAGONALIZABLE
% La base esta compuesta por esos vectores.
inv(P)*A*P %Como coincide con D el resultado es correcto
% Como el determinante de A es distinto de 0 es un isomorfismo,los valores propios 
% de f?1 son: 2 simple y 1/2 doble; y f?1 es diagonalizable.


