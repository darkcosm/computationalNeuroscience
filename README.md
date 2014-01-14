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

<h2>Review</h2>
What = Descriptive Models  
How = Mechanistic Models  
Why = Interpretive Models

- Receptive Fields = specific properties of a sensory stimulus that generate a strong response from the neuron
  + Support: Hubel and Wiesel, c, 1965
    - Summary: electrodes where implanted in the visual area of a cat's brain. The amazing thing is that specific neurons in the brain only spiked when a bar the cat was looking at was oriented in a certain way. For example, when the bar was vertical a specific set of neurons spiked and when the bar was horizontal another specific set of neurons spiked.
    - Frequency of spikes = function( bar's orientation )
   + Descriptive Model of Receptive Fields in the Retina
    - center-surround receptive fields in the retina look like this:  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RetinaCenterSurroundReceptiveField.gif)

    - activity of cells looking at a horizontal bar from Retina -> LGN -> V1 (Primary Visual Cortex)  
    ![alt text](https://raw.github.com/quinnliu/ComputationalNeuroscience/master/imagesForExplanation/RetinaToLGNToV1.gif)
    - Notice that the receptive fields of neurons in V1 are now elipse shaped instead of circle shaped.
    
===================================================================
Feel free to e-mail me at quinnliu@vt.edu for any questions. Enjoy!