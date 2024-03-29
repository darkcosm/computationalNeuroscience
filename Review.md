Review
======

<h2>Receptive Field Review</h2>
What = Descriptive Models  
How = Mechanistic Models  
Why = Interpretive Models

- Receptive Fields = specific properties of a sensory stimulus that generate a strong response from the neuron
  + Support: Hubel and Wiesel, c, 1965
    - Summary: electrodes where implanted in the visual area of a cat's brain. The amazing thing is that specific neurons in the brain only spiked when a bar the cat was looking at was oriented in a certain way. For example, when the bar was vertical a specific set of neurons spiked and when the bar was horizontal another specific set of neurons spiked.
    - Frequency of spikes = function( bar's orientation )
  + WHAT: Descriptive Model of Receptive Fields in the Retina
    - center-surround receptive fields in the retina look like this:  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RetinaCenterSurroundReceptiveField.gif)

    - activity of cells looking at a horizontal bar from Retina -> LGN -> V1 (Primary Visual Cortex)  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RetinaToLGNToV1.gif)
    - Notice that the receptive fields of neurons in V1 are now elipse shaped instead of circle shaped. These are called oriented receptive fields.
  + HOW: Mechanistic Model of Receptive Fields in V1
    - In 1960s it was suggested the V1 receptive field is created from converging LGN cell inputs in the following way:  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/MechanisticModelOfV1Neurons.jpg)
  + WHY: Interpretive Models of Receptive Fields in V1
    - Example of receptive fields in V1:  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/ExampleReceptiveFieldsOfV1Neurons.jpg)

    - Receptive fields of retina cells in different light levels:
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/ReceptiveFieldOfRetinaCellInDifferentLightLevel.jpg)

<h2>Neurobiology Review</h2>
   - Synapses = a connection between 2 neurons. There are 2 different types
     + Electrical synapses use gap junctions where there are ion channels connecting the 2 neurons. 
     + Chemical synapses use neurotransmitters
     
   - Neurons with synapses stained yellow and red: 
   ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/Neuron.jpg)

     + Neuron Doctrine:
       - The neuron is the fundamental structural & functional unit of the brain
       - Neurons are discrete cells and not continuous with other cells (with some exceptions)
       - Information flows from the dendrites to the axon via the cell body (with some exceptions)

     + Here we have drawings of some different types of neurons:  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/MoreTypesOfBrainCells.jpg) 

     + Grey matter is both input and output  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/GreyAndWhiteMatter.jpg) 

     + This is how the Neurons are arranged in the 6 layers of the neocortex:  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/CellOrganizationInNeocortex.jpg) 
     
   - Spike Timing Dependent Plasticity (STDP)  
   ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/SpikeTimingDependentPlasticity.jpg)

<h2>Neural Code</h2>
   - Innovative techniques for recording the brain
     + Calcium imaging. Calcium enters a neuron when it is spiking.  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/CalciumImaging.jpg)
       - If we record when calcium is entering a neuron we can create a graph of when the neuron is spiking and create a Raster plot:  
       ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RasterPlotOfNeuron.jpg)  
       Each red dot is when a neuron spiked while a person watched the same 20 second video. Pretty amazing!

       - And here is a Raster plot for a group of neurons watching the same video many times over:
       ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RasterPlotOfManyNeurons.jpg)  
       This is extremely beautiful and it tells us that each neuron is encoding some feature of the video the person is watching over and over again.
   - Encoding and decoding
      + vertical bar "|" = given
      + Probability(neuron response | specific stimulus) = encoding
      + Probability(specific stimulus | neuron response) = decoding

   - Tuning Curves. In Figure A the black bars oriented in different directions represent bars of light with the 
     neuron response to the right. Figure B is a graph of the data shown in Figure A where a V1 neuron's response
     matches a gaussian distribution.  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/TuningCurves.jpg)

   - Probability(neuron spike | specific stimulus)
     + feature selection from specific stimulus to response (example neuron spiking)  
     ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/FeatureSelection.jpg)
     + How do we create this probabilistic model of a neuron spiking when given a specific stimulus???????
       - Step 1) We give a real neuron some input over time and record whenever it spikes shown in red in the figure below!  
       - Step 2) We record the activity of the neuron a few moments before the spike highlighted in light blue
       - Step 3) We take all the activity in light blue and average the activity to produce a model of what the neuron fires to.
       WARNING!!!!!!!!!! Is this the correct thing to do???? Making it less noisy may be the wrong goal!
       ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/SpikeTriggeredAverage.jpg)
     + After creating the probabilistic model we now want to determine the nonlinear input/output function
       - The input/output function = Probability(neuron spike | specific stimulus = s_1) 
         + Using Bayes' rule we have: P(spike | s_1) = P(s_1 | spike) * P(spike) / P(s_1)

<h2>Baye's Law</h2>
    - P = probability, s = stimulus, r = response, | = given
    - P(s|r) = P(r|s)*P(s)/P(r) 
      + P(s|r) = a posteriori distribution
      + where P(r|s) = conditional distribution = likelihood function
      + where P(s) = prior distribution
      + where P(r) = marginal distribution

<h2>Information & Entropy</h2>
- Entropy counts the number of yes/no questions it takes to get to a specific variable within the entire group of variables

- Entropy = - Sum from i = 1 to n of Probability_of_picking_i_out_of_n * log_base_2 of (Probability_of_picking_i_out_of_n)

<h2>Modeling Single Neurons</h2>
- A interesting way to think of a neuron is as a battery as shown in the following image withouts it's dendrites and axons:  
  ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/NeuronBatteryModel.jpg)

- Now within the lipid bilayer shown as the blue & yellow circle above there are also ion channels that allow
  ```K+```, ```Na+```, ```Cl-```, & ```Ca^2+``` to pass through the lipid bilayer. 
  + Many people do not realize there are many different types of ion channcels
    - voltage dependent
    - transmitter dependent (within the synaptic cleft)
    - Ca dependent
    - mechanosensitive
    - heat sensitive

- resistor = lipid bilayer; capacitor = ion channels; battery = ion gradient

- different ways different types of neurons can fire (more info at www.izhikevich.com):  
  ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/DifferentWaysNeuronsFire.jpg)


