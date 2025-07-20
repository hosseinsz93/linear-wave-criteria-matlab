%% Linear Wave Criteria Analysis Script
% This script calculates wave characteristics using linear wave theory.
% It helps determine whether the wave satisfies deep-water assumptions 
% and provides insight into wave steepness, period, and critical parameters.

clc; clear; close all;
% -----------------------------
% Input Parameters
% -----------------------------
d = 2.3;     % Water depth (m)
L = 1.6;     % Wavelength (m)
H = 0.05;    % Wave height (m)

% -----------------------------
% Derived Parameters
% -----------------------------
k = 2 * pi / L;                      % Wave number (rad/m)
g = 9.806;                           % Gravitational acceleration (m/s^2)

% Dispersion relation (linear wave theory)
omega = sqrt(g * k * tanh(k * d));  % Angular frequency (rad/s)
T = 2 * pi / omega;                 % Wave period (s)

% -----------------------------
% Wave Criteria Calculations
% -----------------------------

% Dimensionless horizontal ratio: depth vs gravity-period scale
Horizontal_value = d / (g * T^2);

% Dimensionless vertical ratio: wave height vs gravity-period scale
Vertical_value = H / (g * T^2);

% Empirical formula for wavelength (approximation)
length = 1.56 * T^2 * tanh(k * d);  

% Minimum required depth for deep-water wave assumption
min_depth = g * T^2 / (4 * pi);     

% Wave steepness: H/L (used to assess breaking waves)
steepness = H / L;

% -----------------------------
% Display Results
% -----------------------------
fprintf('Wave Period (T): %.3f s\n', T);
fprintf('Horizontal Value (d / gT^2): %.5f\n', Horizontal_value);
fprintf('Vertical Value (H / gT^2): %.5f\n', Vertical_value);
fprintf('Estimated Wavelength (Empirical): %.3f m\n', length);
fprintf('Minimum Depth for Deep-Water Wave: %.3f m\n', min_depth);
fprintf('Wave Steepness (H/L): %.4f\n', steepness);
