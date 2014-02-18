close all; clear all; clc; % clear old plots

% this experiment is based on a set of artificial "experiments" that
% we've run on four simulated neurons that emulate the behavior found
% in the cercal organs of a cricket.

% 4 neurons were probed with a range of air velocity stimuli of uniform
% intensity and differing direction. The firing rate of each of the neurons
% in response to each of the stimulus values.Each of these recordings lasted
% 10 seconds and we repeated this process 100 times for each neuron-stimulus 
% combination.
load('tuning.mat')

neuronResponseMatrix(:,:,1) = neuron1;
neuronResponseMatrix(:,:,2) = neuron2;
neuronResponseMatrix(:,:,3) = neuron3;
neuronResponseMatrix(:,:,4) = neuron4;

meanResponse = squeeze(mean(neuronResponseMatrix,1));

stimulus = stim;
% stimulus = direction of the air velocity
plot(stimulus, meanResponse)
legend('Neuron 1','Neuron 2','Neuron 3','Neuron 4')
title('Air Velocity Stimulus vs. Neuron Response')
xlabel('Air Velocity Speed Stimulus')
ylabel('Mean Neuron Response')

peakCount = neuronResponseMatrix * 10;

figure

subplot(3,1,1)
meanPeakCount = squeeze(mean(peakCount,1));
plot(stimulus,meanPeakCount)
legend('Neuron 1','Neuron 2','Neuron 3','Neuron 4')
title('Air Velocity Stimulus vs. Mean Neuron Response * 10')
xlabel('Air Velocity Speed Stimulus')
ylabel('Mean Neuron Response * 10')
 
subplot(3,1,3)
variancePeakCount = squeeze(var(peakCount,1));
plot(stimulus,variancePeakCount ) 
legend('Neuron 1','Neuron 2','Neuron 3','Neuron 4')
title('Air Velocity Stimulus vs. Variance Neuron Response')
xlabel('Air Velocity Speed Stimulus')
ylabel('Variance Neuron Response')

% load('pop_coding.mat')

% r=[r1',r2',r3',r4'];

% c=[c1;c2;c3;c4];

% rmax=max(squeeze(max(neuronResponseMatrix,[],1)),[],1);

% ratio=r./repmat(rmax,size(r,1),1);
% vpop=zeros(size(ratio,1),2);

% for i=1:4
    
%     vpop=vpop+repmat(ratio(:,i),1,2).*repmat(c(i,:),size(ratio,1),1);
    
% end

% figure
% plot(vpop(:,1),vpop(:,2),'.')
% set(gca,'YLim',[-1,1],'XLim',[-1,1])


% [s,~]=cart2compass(vpop(:,1),vpop(:,2));
% mean(s)