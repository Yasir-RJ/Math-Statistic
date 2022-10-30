%% INL�MNINGSUPPGIFT 3 / Uppgift 1. By Yasir Riyadh, KTH
clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret

%% (a) Best�m vektor q
syms q1 q2 % Deklarera symbolisk variabeln x
P=[12/20 8/20;9/10 1/10]  % �verg�ngsmatrisen
q=[q1 q2];  % station�ra sannolikhetsvektorer 
ekv1=q*P==q;
ekv2=q1+q2==1;
[q1,q2]=solve(ekv1,ekv2,q);  % l�ser systemet
q1=double(q1)
q2=double(q2)

%% (b) Best�m vektor vp(n), n=1,2,3,50,100
vp0=[0.1 0.9]  % initialvektor
vp1=vp0*P  % vektor vp(1)
vp2=vp0*P^2  % vektor vp(2)
vp3=vp0*P^3  % vektor vp(3)
vp50=vp0*P^50  % vektor vp(50)
vp100=vp0*P^100  % vektor vp(100)

vp0=[0.7 0.3]  % en annan initialvektor
vp1=vp0*P  % vektor vp(1)
vp2=vp0*P^2  % vektor vp(2)
vp3=vp0*P^3  % vektor vp(3)
vp50=vp0*P^50  % vektor vp(50)
vp100=vp0*P^100  % vektor vp(100)

%% (c) Best�m p2(100)
vp0=[1 0]  % initialvektor
vp100=vp0*P^100  % vektor vp(100)


%% INL�MNINGSUPPGIFT 3 / Uppgift 2
clear % Rensa variabler och funktioner fr�n minnet

%% (a) Best�m x,y,z,w
syms x y z w % Deklarera symbolisk variabeln 
P=[2*x 0.4 0.2 y;0.2 x 2*y 0.3; z+1 0.22 0.33 0.2;0.2 w+7 0.24 0.42];
ekv1=sum(P(1, :))==1;
ekv2=sum(P(2, :))==1;
ekv3=sum(P(3, :))==1;
ekv4=sum(P(4, :))==1;
[x,y,z,w]=solve(ekv1,ekv2,ekv3,ekv4,x,y,z,w); % l�ser systemet
S=[x,y,z,w];
vpa(S)
P=[2*x 0.4 0.2 y;0.2 x 2*y 0.3; z+1 0.22 0.33 0.2;0.2 w+7 0.24 0.42];
digits(4);  % anv�nd endast fyra signifikanta siffror
P=vpa(P) % konvertera br�kdel till decimal i matrisen

%% (b) Best�m vektor vp(n), n=1,2,3,50,100
vp0=[0.2 0.3 0.2 0.3]  % initialvektor
vp1=vp0*P  % vektor vp(1)
vp2=vp0*P^2  % vektor vp(2)
vp3=vp0*P^3;  % vektor vp(3)
vp50=vp0*P^50  % vektor vp(50)
vp100=vp0*P^100  % vektor vp(100)

%% (c) Best�m vektor vp(5743)
% vp50=vp100=vp5743=q
% Man kan ocks� uppskatta det ungef�rliga v�rdet av sannolikhetsvektorn
% fr�n egenvektorn f�r P ',motsvarande egenv�rdet 1.
% Det skulle vara vektorn Q, s� att Q * P = Q.
[Q1,D] = eig(P');
Q = Q1(:,1)';
Q = Q/sum(Q)

%% (d) Vad s�ger b) om den station�ra sannolikhetsvektorn?
% N�r b�rjar det upprepa v�rden
% q=vp50=vp100
vp50
vp100

%% (e) Best�m vektor q
syms q1 q2 q3 q4 % Deklarera symbolisk variabeln x
q=[q1 q2 q3 q4];  % station�ra sannolikhetsvektorer 
ekv1=q*P==q;
ekv2=q1+q2+q3+q4==1;
[q1 q2 q3 q4]=solve(ekv1,ekv2,q)  % l�ser systemet

%% (f) J�mf�r dina resultat i b) och e) 
% N�r man j�mf�r resultaten blir det tydligt att:
% Limit(n goes to inf)p(n)= station�ra sannolikheter(q)

