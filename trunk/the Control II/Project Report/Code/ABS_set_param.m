% slip control setting of constants and initialising parameters  

clear all;
clc;

%Set the constants 
M = 440.0;      % mass of quarter car including wheel mass
Mt = M;
ms = 427.0;     % mass of quarter car excluding wheel
mw = 40.0;      % mass of wheel
Ks = 19960.0;   % spring constant for suspension system
Cs = 1050.0;    % damper constant for suspension system
Kw = 175500.0;  % spring constant for wheel
Ct = 1500.0;    % damper constant for wheel
I  = 1.6;       % moment of inertia for the wheel
Im = I;
Bf = 0.08;       % bearing friction
R0 = 0.35;       % wheel radius
Cx = 0.856;     % aerodynamic friction from Fr = - Cx * v
mu_0 = 0.9;     % mu zero
u_0 = mu_0;
l_0 = 0.20;     % lambda zero from
Kb  = 0.08;     % braking pressure gain     %%0.08
B_w  = Kb;      % to cross check if this is correct %%%%%%%%%%
tau = 0.003;    % braking time constant
g   = 9.81;      % accelleration due to gravity
Fz  = Mt*g;      % normal static reaction to weight
%From the lab simulations
Kgamma = 1.0e+004 * [0.0054   -0.2451   -8.3282    0.2142];

% Initialise the parameters
v_initial = 120000/(3600);             % initial car velocity
w_initial = v_initial/R0;    % initial wheel omega
Vb_initial = 1;             % initial braking pressure
tau_initial  = Kb*Vb_initial;%initial braking force
