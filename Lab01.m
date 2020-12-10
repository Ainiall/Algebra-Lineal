%%% Practica 1 

%% Introduccion a Matlab
% -------------------------------
%% Ejercicio 6.1 
% Operaciones basicas con n complejos
%% Apartado 2
z=(1-exp(pi*1i/2))/(1+exp(pi*1i/2))

w=(exp(pi*1i))*(1-exp(-pi*1i/3))

u=((z+conj(w))/2i)+1/2;
[abs(u),angle(u)]
[real(u),imag(u)]
%% Apartado 3
t=(((1-i)^16)*(3*i+4))/(4*i-3)
real(t)
imag(t)
conj(t)
abs(t) %modulo
angle(t) % argumento
angle(t)*180/pi %resultado en grados

% Ejercicio 7.9 Practica 1
A=[1/3 1/4 1/5;1/4 1/5 1/6;1/5 1/6 1/7]
format rat
A
det(A)
rank(A)
inv(A)
A*inv(A) %identidad
inv(A)*A %identidad
% A*inv(sym(A))
A.' % transpuesta de A
trace(A) % la traza es la suma de los elementos de la diagonal principal

B=[1+i 2 -i;3 2-3i 5;3 -3+3i 7-3i]
B.'% calcula la traspuesta de B. Utiliza la orden transpose 
B' % calcula la conjugada traspuesta de B
det(B)
rank(B)
inv(B)
B*inv(B)
inv(B)*B
% B*inv(sym(B))
trace(B)

% Ejercicio 7.10 Practica 1
A=[1 1 0;0 1 1;0 0 1]
B=[i 1-6i 2+i;0 -1 3-i;0 0 -i]
A*B-B*A
A^2+B^2
det(A*B)-det(A)*det(B)
(A+B).'-(A.'+B.')
(A*B).'-(B.'*A.')

% Ejercicio 7.11 Practica 1
M=[1 1 1;1 2 3;3 1 0] % comprueba que M es una matriz regula
N=[8 5;19 13;6 2]
B=inv(M)*N
% cambia a format short y repite el último producto de matrices
format short
B=inv(sym(M))*N

% Ejercicio 9 Practica 1
% Calcular la parte real, la parte imaginaria, el complejo conjugado, el módulo, 
% el argumento principal, la representación trigonométrica, la representación polar, 
% la representación exponencial y las raíces cúbicas para cada uno de los números 
% complejos siguientes
z=1/2+sqrt(3)/2*i
real(z)
imag(z)
conj(z)
abs(z)
angle(z)
w=abs(z)*exp(i*angle(z))
w=abs(z)*(cos(angle(z))+i*sin(angle(z)))
syms x
s=solve(x^3-z)
double(s)


