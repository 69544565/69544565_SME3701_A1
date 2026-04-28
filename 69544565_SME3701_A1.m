clear; clc; close all;   % basic "cleanup" - removes workspace variables, clears command window, closes all figure windows

% Parameters (given)
m = 5;       % Mass (kg)
k = 2000;    % Spring Stiffness (N/m)
x0 = 0.02;   % Initial Displacement (m)
v0 = 0;      % Initial Velocity (m/s)

% (1.1) Calculate natural angular frequency (wn)
wn = sqrt(k/m);                                    % formula for natural angular frequency
fprintf('(Question 1.1) wn = %.3f rad/s\n', wn);   % displays result
%% 

% (1.2) Compute the displacement 𝑥(𝑡) of the system
t_input = input('(Question 1.2) Enter time (in seconds) to compute displacement: ');                    % asks user to specify time
x_output = x0 * cos(wn * t_input);                                                                      % equation for motion of the system
fprintf('(Question 1.2) At t = %.3f seconds, the displacement x(t) is: %.3f m\n', t_input, x_output);   % displays result
%% 

% (1.3) Plot displacement vs. time for given time interval
t_plot = linspace(0, 5, 1000);                  % defines time interval and number of points
x_plot = x0 * cos(wn * t_plot);                 % equation for motion of the system
figure(1)                                       % creates figure 1
plot(t_plot, x_plot, 'b', 'LineWidth', 1.5)     % plots into figure 1
grid on                                         % enables major grid lines
xlabel('Time (s)')                              % labels x-axis
ylabel('Displacement x(t) (m)')                 % labels y-axis
title('(Question 1.3) Displacement vs. Time')   % Adds title to figure 1
%% 

% (1.4) Plot the velocity vs. time
v_t = -x0 * wn * sin(wn * t_plot);          % computes v(t), which is the derivative of x(t), same time interval as 1.3
figure(2)                                   % creates figure 2
plot(t_plot, v_t, 'r', 'LineWidth', 1.5)    % plots into figure 2
grid on                                     % enables major grid lines
xlabel('Time (s)')                          % labels x-axis
ylabel('Velocity v(t) (m/s)')               % labels y-axis
title('(Question 1.4) Velocity vs. Time')   % Adds title to figure 2