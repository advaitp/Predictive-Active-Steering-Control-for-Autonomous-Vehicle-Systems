% Code to store the trajectory that will be fed to the controller
fprintf('Generating Reference Values...\n');
driving_scenario = dsd_new();

posRef = [];
yawRef = [];
i = 1;

time_step = 0;
t = [];

restart(driving_scenario);
while advance(driving_scenario)
    pos = driving_scenario.Actors(1,1).Position;
    posRef = [posRef; pos];
    yaw = driving_scenario.Actors(1,1).Yaw;
    yawRef = [yawRef, yaw];
    i = i+1;
    time_step = time_step+0.01;
    t = [t, time_step];
    pause(0.01);
end
fprintf('Done!\n');