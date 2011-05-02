%Ball example

ks = 23500;        %Spring constant
Bs = 700;        %Damper constant
ms = 490;        %Mass of 1/4 car
mu = 40;         %Mass of wheel
kw = 190000;        %Tire spring constant
Tmax = 10000;    %Actuator force
A = [0 1 0 0;
    -ks/ms -Bs/ms ks/ms Bs/ms; 
    0 0 0 1; 
    ks/mu Bs/mu -(ks-kw)/mu -Bs/mu];
B = [0; Tmax/ms; 0; -Tmax/mu];
C = [0 1 -1 0];
C2 = [0 0 1 0];
D = 0;

poles = eig(A);

% t = 0:0.01:2;
% u = 0*t;
x0 = [0.005 0 0 0];
stateSpace = ss(A, B, C, D);

tutorial_tf = tf(stateSpace)

p1 = -20 + 20i;
p2 = -20 - 20i;
p3 = -100;
p4 = -62;
K = place(A,B,[p1 p2 p3 p4]);
t = 0:0.01:2; 
u1 = 0.010*ones(size(t))
u2 = 10*ones(size(t));

Nbar=rscale(A,B,C,0,K)
Nbar2=rscale(A,B,C2,0,K)

lsim(A-B*K,B*Nbar,C,0, 'r', u1,t)
% hold
% lsim(A-B*K,B*Nbar2,C2,0, 'g--', u2, t)

% u = 0.001*ones(size(t));
% lsim(A-B*K,B,C,0,u,t)
                                        
 