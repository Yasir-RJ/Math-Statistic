%% INL�MNINGSUPPGIFT 2 / Uppgift 2. By Yasir Riyadh, KTH
clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret

%% (i) Best�m v�rdet p�  k1
syms x % Deklarera symbolisk variabeln x
A=int(11*x^2,0,3); % integral fr�n 0 till 3
k1=1/A

%% (ii) Best�m v�ntev�rdet u1
f1=k1*11*x^2; % Definiera funktion f1(x)
u1=int(x*f1,0,3) % integral xf1(x)fr�n 0 till 3

%% (iii) Best�m variansen v1
v1=int((x-u1)^2*f1,0,3) % integral (x-u1)^2*f1(x)fr�n 0 till 3

%% (iv) Best�m v�rdet p�  k2
A1=int(6*x,0,1); % integral fr�n 0 till 1
A2=int(6*(2-x),1,2); % integral fr�n 1 till 2
k2=1/(A1+A2)

%% (v) Best�m v�ntev�rdet u2
f21=k2*6*x; % Definiera funktion f21(x)
f22=k2*6*(2-x); % Definiera funktion f22(x)
u2=int(x*f21,0,1)+int(x*f22,1,2) % integral xf2(x)fr�n 0 till 2

%% (vi) Best�m variansen v2
v2=int((x-u2)^2*f21,0,1)+int((x-u2)^2*f22,1,2) % integral (x-u1)^2*f2(x)fr�n 0 till 2

%% (vii) Best�m v�ntev�rdet och variansen f�r 4X+6Y
u3=4*u1+6*u2
v3=16*v1+36*v2

