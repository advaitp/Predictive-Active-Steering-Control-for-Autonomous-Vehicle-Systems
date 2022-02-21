% Loads the plant parameters
load ("new_ref1.mat");

% Loads the mpc parameters
load ("mpc1.mat");

% Opens the model in simulink
run ("System.slx");