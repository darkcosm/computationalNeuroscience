close all; clear all; clc; % clear old plots

load('tuning.mat')

responses(:,:,1) = neuron1;
responses(:,:,2) = neuron2;
responses(:,:,3) = neuron3;
responses(:,:,4) = neuron4;

meanResponse=squeeze(mean(responses,1));

plot(stim, meanResponse)
legend('1','2','3','4')

peakCount = responses * 10;

figure

subplot(2,1,1)
meanPeakCount=squeeze(mean(peakCount,1));
plot(stim,meanPeakCount)
subplot(2,1,2)
varPeakCount=squeeze(var(peakCount,1));
plot(stim,varPeakCount)

load('pop_coding.mat')

r=[r1',r2',r3',r4'];

c=[c1;c2;c3;c4];

rmax=max(squeeze(max(responses,[],1)),[],1);

ratio=r./repmat(rmax,size(r,1),1);
vpop=zeros(size(ratio,1),2);

for i=1:4
    
    vpop=vpop+repmat(ratio(:,i),1,2).*repmat(c(i,:),size(ratio,1),1);
    
end

figure
plot(vpop(:,1),vpop(:,2),'.')
set(gca,'YLim',[-1,1],'XLim',[-1,1])


[s,~]=cart2compass(vpop(:,1),vpop(:,2));
mean(s)