function [ spikeTriggeredAverage ] = computeSpikeTriggeredAverage( stimulusVector, neuronSpikeVector, numberOfTimeSteps )
%computeSpikeTriggeredAverage Calculates the spike-triggered average for a neuron that
%            is driven by a stimulus defined in stimulusVector. The spike-
%            triggered average is computed over numberOfTimeSteps timesteps.
    spikeTriggeredAverage = zeros(numberOfTimeSteps, 1);

    % This command finds the indices of all of the spikes that occur
    % after 300 ms into the recording.
    spikeTimes = find(neuronSpikeVector(numberOfTimeSteps+1:end)) + numberOfTimeSteps;

    % Fill in this value. Note that you should not count spikes that occur
    % before 300 ms into the recording.
    numberOfSpikes = length(spikeTimes);
    fprintf('numberOfSpikes = %d\n', numberOfSpikes);
    
    % Compute the spike-triggered average of the spikes found using the
    % find command. To do this, compute the average of all of the vectors
    % starting 300 ms (exclusive) before a spike and ending at the time of
    % the event (inclusive). Each of these vectors defines a list of
    % samples that is contained within a window of 300 ms before the each
    % spike. The average of these vectors should be completed in an
    % element-wise manner.

    for i = 1:numberOfSpikes,
        window = stimulusVector( (spikeTimes(i) - numberOfTimeSteps + 1) : spikeTimes(i) );
        spikeTriggeredAverage = spikeTriggeredAverage + window;
    end

    spikeTriggeredAverage = spikeTriggeredAverage / numberOfSpikes;

end

