function [scenario, egoVehicle] = createDrivingScenario()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.11 (R2021b) and Automated Driving Toolbox 3.4 (R2021b).
% Generated on: 20-Nov-2021 18:21:31

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [0 0 0;
    115.7 -0.4 0];
laneSpecification = lanespec(2);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [2.2 -2.1 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');
waypoints = [2.2 -2.1 0;
    12.4 -2 0;
    21.2 -2 0;
    33.6 -1.6 0;
    44.3 -0.5 0;
    53.8 0.5 0;
    66.7 1.7 0;
    79.9 2.4 0;
    88.9 2.2 0;
    100.2 2.2 0;
    106.4 2.3 0];
speed = [15;15;15;15;15;15;15;15;15;15;15];
trajectory(egoVehicle, waypoints, speed);

