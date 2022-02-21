% Load the MPC parameters
load("mpc_new.mat");

% Load the parameters of the plant model
load("ref_new.mat");

% Sample time 
Ts = 0.05;

% Converting the continuous signal to discrete signal
ct_plant = mpc1.Model.Plant;
dt_plant = c2d(ct_plant,Ts);
mpc1.Model.Plant = dt_plant;

% Run the Model
run("LTV_MPC.slx");