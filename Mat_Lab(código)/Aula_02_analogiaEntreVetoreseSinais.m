%% Aula_02_ECM307 - Analogia entre vetores e sinais
%% Boas práticas

clear;
close all;
clc;
%% Cálculo simbólico

syms Ap An n t

num = int(Ap*cos(n*t),t,-pi/2,pi/2) + int(An*cos(n*t),t,pi/2,3*pi/2)
den = int(cos(n*t)^2,t,0,2*pi)
%% Substituindo os valores

N  = 36;
n  = 1:1:N;
Ap = +1/2;
An = -1/2;

Num_numerico = eval(num);
Den_numerico = eval(den);

c = Num_numerico./Den_numerico
%% Somando as hamônicas

aux   = 0
tempo = [0:1e-3:6*pi];

for k = 1:N

    aux  =  aux + c(k)*cos(n(k)*tempo);

end

plot(tempo,aux)