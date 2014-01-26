close all; clear all; clc;
load('c1p8.mat');

% Fill in these values
sampling_period = ; % in ms
num_timesteps = ;

spikeTriggeredAverage = computeSpikeTriggeredAverage(stim, rho, num_timesteps);

time = -sampling_period*(num_timesteps-1):sampling_period:0; % in ms

figure(1);
plot(time, spikeTriggeredAverage);
xlabel('Time (ms)');
ylabel('Stimulus');
title('Spike-Triggered Average');