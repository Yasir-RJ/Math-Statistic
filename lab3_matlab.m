%% INLÄMNINGSUPPGIFT 3 / Uppgift 1. By Yasir Riyadh, KTH
clear % Rensa variabler och funktioner från minnet
clc % Rensa kommandofönstret

%% (a) Bestäm vektor q
syms q1 q2 % Deklarera symbolisk variabeln x
P=[12/20 8/20;9/10 1/10]  % övergångsmatrisen
q=[q1 q2];  % stationära sannolikhetsvektorer 
ekv1=q*P==q;
ekv2=q1+q2==1;
[q1,q2]=solve(ekv1,ekv2,q);  % löser systemet
q1=double(q1)
q2=double(q2)

%% (b) Bestäm vektor vp(n), n=1,2,3,50,100
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

%% (c) Bestäm p2(100)
vp0=[1 0]  % initialvektor
vp100=vp0*P^100  % vektor vp(100)


%% INLÄMNINGSUPPGIFT 3 / Uppgift 2
clear % Rensa variabler och funktioner från minnet

%% (a) Bestäm x,y,z,w
syms x y z w % Deklarera symbolisk variabeln 
P=[2*x 0.4 0.2 y;0.2 x 2*y 0.3; z+1 0.22 0.33 0.2;0.2 w+7 0.24 0.42];
ekv1=sum(P(1, :))==1;
ekv2=sum(P(2, :))==1;
ekv3=sum(P(3, :))==1;
ekv4=sum(P(4, :))==1;
[x,y,z,w]=solve(ekv1,ekv2,ekv3,ekv4,x,y,z,w); % löser systemet
S=[x,y,z,w];
vpa(S)
P=[2*x 0.4 0.2 y;0.2 x 2*y 0.3; z+1 0.22 0.33 0.2;0.2 w+7 0.24 0.42];
digits(4);  % använd endast fyra signifikanta siffror
P=vpa(P) % konvertera bråkdel till decimal i matrisen

%% (b) Bestäm vektor vp(n), n=1,2,3,50,100
vp0=[0.2 0.3 0.2 0.3]  % initialvektor
vp1=vp0*P  % vektor vp(1)
vp2=vp0*P^2  % vektor vp(2)
vp3=vp0*P^3;  % vektor vp(3)
vp50=vp0*P^50  % vektor vp(50)
vp100=vp0*P^100  % vektor vp(100)

%% (c) Bestäm vektor vp(5743)
% vp50=vp100=vp5743=q
% Man kan också uppskatta det ungefärliga värdet av sannolikhetsvektorn
% från egenvektorn för P ',motsvarande egenvärdet 1.
% Det skulle vara vektorn Q, så att Q * P = Q.
[Q1,D] = eig(P');
Q = Q1(:,1)';
Q = Q/sum(Q)

%% (d) Vad säger b) om den stationära sannolikhetsvektorn?
% När börjar det upprepa värden
% q=vp50=vp100
vp50
vp100

%% (e) Bestäm vektor q
syms q1 q2 q3 q4 % Deklarera symbolisk variabeln x
q=[q1 q2 q3 q4];  % stationära sannolikhetsvektorer 
ekv1=q*P==q;
ekv2=q1+q2+q3+q4==1;
[q1 q2 q3 q4]=solve(ekv1,ekv2,q)  % löser systemet

%% (f) Jämför dina resultat i b) och e) 
% När man jämför resultaten blir det tydligt att:
% Limit(n goes to inf)p(n)= stationära sannolikheter(q)

