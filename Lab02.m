%%% Practica 2 

%% Sistemas de ecuaciones lineales
% -------------------------------
%% Ejercicio 1.1
% Estudiar y resolver, si es posible, los siguientes sistemas lineales:
% a)
A1=[1 3 -1 1; -2 1 2 0; 0 1 0 -1];
a1=[1;7;0];
M1=[A1 a1] %matriz ampliada
[rank(A1),rank(M1)] %rango matriz sistema y ampliada
rref(M1) %gauss-jordan
%------resolver sistema-------%
syms x y z t
s1=solve(x+3*y-z+t-1,-2*x+y+2*z-7,y-t,[x,y,t]) %incognitas principales a)
[s.x, s.y, s.t] %poner tambien que z=z

% NOTA: Para resolver sistemas utilizamos la orden >rref (de la matriz
% ampliada). Si utilizamos la orden solve declararemos solamente las
% incognitas principales

% c)
C1=[3 2 -1; 1 -1 3; 2 3 -4];
c1=[1;2;3];
M1=[C1 c1] %matriz ampliada
[rank(C1),rank(M1)] %El sistema es incompatible

% b)
B1=[1 -2 1; 2 -5 2; 3 2 -1];
b1=[7;6;1]
M1=[B1 b1] %matriz ampliada
[rank(B1),rank(M1)]
rref(M1)
% ------resolver sistema-------%
syms x y z t
sB=solve(x-2*y+z-7,2*x-5*y+2*z-6,3*x+2*y-z-1,[x,y,z])
[sB.x,sB.y,sB.z]

% d)
D1=[5 2 4 31; 2 1 1 13; -1 1 -5 -2; 4 0 8 20];
d1=[-2;0;6;-8];
M1=[D1 d1] % creamos la matriz ampliada del sistema
[rank(D1),rank(M1)] %solo tiene solucion si los rangos son iguales
rref(M1)
% ------resolver sistema-------%
syms x y z t
sD=solve(x+2*z+5*t+2,y-3*z+3*t-4,x,y) %solo las incognitas principales 
[sD.x,sD.y]% añadir z=z y t=t

% Las ecuaciones para solve las pasamos desde la orden rref o escribimos las
% independientes

%% Ejercicio 1.4
% Demostrar que existe una única curva  y = a + bx + cx2 + dx3
% que pasa por los puntos(-1,2), (0,4), (1,10), (2,26). Dar su ecuación
clear
syms x y a b c d
f=a+b*x+c*x^2+d*x^3-y  , pretty(f)
f1=subs(f,[x y],[-1 2]) % sustituimos en f: (x,y) por (-1,2)
f2=subs(f,[x y],[0 4])
f3=subs(f,[x y],[1 10])
f4=subs(f,[x y],[2 26])
S=solve(f1,f2,f3,f4,a,b,c,d)
% declaro todas las incógnitas. Hay una única solución
[S.a,S.b,S.c,S.d] 

%% Ejercicio 1.3
% Dado el sistema dependiente del parametro real m
% 3x + 3y ? z = 0 
% ?4x ? 2y + mz = 0 
% 3x + 4y + 6z = 0
syms m
A3=[3,3,-1;-4,-2,m;3,4,6] 
det(A3)
solve(det(A3))
M3=subs(A3,m,46/3) % estudiamos el caso m=46/3
rref(M3)% como el rango es 2, tenemos dos incógnitas principales
syms x y z
R3=solve( x-22/3*z, y+7*z,x,y) % precisando sólo las incógnitas principales
[R3.x R3.y]

%% Ejercicio 1.2
% Estudiar el sistema
% 2x + 3ay + 4z = 17 
% x + ay + z = 6 
% 2x + ay + 2z = 9 
syms a x y z
A=[2 3*a 4; 1 a 1; 2 a 2]
b=[17;6;9]
rangoA=rank(A) % rango 3, MATLAB se olvida de a
determinanteA=det(A), solve(A) %determinante -2*a, se anula si a=0
% det(A) distinto de 0, sistema compatible determinado con solucion unica
E=A*[x;y;z]-b % se escribe el sistema matricialmente
s=solve(E(1),E(2),E(3),[x,y,z])
[s.x s.y s.z] % [2, 3/a, 1] x=2 y=3/a z=1 cuando a es distinto de 0

A0= subs(A,a,0) % sustituye a por 0 para obtener la solucion cuando a=0
E2=A0*[x;y;z]-b
s2=solve(E2(1),E2(2),E2(3),[x,y,z]) 
[s2.x s2.y s2.z] % Empty sym: 0-by-3
rangoA2=rank(A0) % rango 2
rangoAmpliada=rank([A0,b]) % rango 3
% como los rangos no coinciden el sistema es incompatible, no tiene solucion
rref([A0,b]) % cuando a=0 el sistema no tiene solucion



