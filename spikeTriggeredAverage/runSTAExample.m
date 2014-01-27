close all; clear all; clc;
load('c1p8.mat');

stimulusVector = stim; % stimulus = 600000 x 1 column vector

% neuronSpikeVector = has a 1 is a spike occured in the time bin corresponding to that index and a 0 otherwise
neuronSpikeVector = rho; % neuronSpikeVector = 600000 x 1 column vector

% sampling rate = 500 Hz = every 1 second 500 samples were taken
% 1 second = 1000 milliseconds (ms). At 500 Hz, every sample was taken 1000/500 = 2 ms period
samplingPeriod = 2; % in ms
numberOfTimeSteps = 300 / samplingPeriod;

spikeTriggeredAverage = computeSpikeTriggeredAverage(stimulusVector, neuronSpikeVector, numberOfTimeSteps);

time = -samplingPeriod*(numberOfTimeSteps-1):samplingPeriod:0; % in ms

figure(1);
plot(time, spikeTriggeredAverage);
xlabel('Time (milliseconds)');
ylabel('Stimulus');
title('Spike-Triggered Average');