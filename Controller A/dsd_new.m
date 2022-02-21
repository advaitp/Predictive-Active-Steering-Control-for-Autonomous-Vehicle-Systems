function [scenario, egoVehicle] = dsd_new()

scenario = drivingScenario;

% Add all road segments
roadCenters = [0 0 0;
    84.7 0.2 0];
laneSpecification = lanespec(2, 'Width', 3.925);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [5 0.01 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');
waypoints = [5 0.01 0;
    10 0.0258 0;
    15 0.067 0;
    20 0.17 0;
    25 0.4112 0;
    30 0.9 0;
    35 1.5742 0;
    40 1.89 0;
    45 1.4146 0;
    50 0.5651 0;
    55 -0.3521 0;
    60 -1.5485 0;
    67.9 -2.4 0;
    76.3 -2.2 0;
    83.5 -2.1 0];
speed = [15;15;15;15;15;15;15;15;15;15;15;15;15;15;15];
waittime = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(egoVehicle, waypoints, speed, waittime);

