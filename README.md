Computational Neuroscience
==========================

*"Computational neuroscience provides tools and methods for characterizing WHAT nervous systems do, determining HOW they function, and understanding WHY they operate in particular ways"*  
  
~ P. Dayan and L. Abbott

<h2>How to use this code</h2>
  1. Install [Octave free here](https://db.tt/J97Im052) or [Matlab not free here](http://www.mathworks.com/products/matlab/). Note that Octave = Matlab without the nice graphical user interface. I use Octave so don't feel like you are missing anything if you don't have money for Matlab.

  2. Fork this repository and clone it locally! Navigate into specific folders (made them very specific) and look at the ```README.md``` file for that specific folder for which file(s) to run to see examples of what computational neuroscience can do! Enjoy!

<h2>What each file/folder in this repository is for:</h2>
  - imagesForExplanation = contains images used in other folder's ```README.md``` files for explanation so don't worry about this folder
  - README.md = the file you are reading right now

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

    
===================================================================
Feel free to e-mail me at quinnliu@vt.edu for any questions. Enjoy!