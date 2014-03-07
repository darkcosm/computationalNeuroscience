% Basic integrate-and-fire neuron 
% R Rao 2007

clear
close all
% input current
% 1 nA = 1000 pA
I = .2 % 0.2 nA is the largest current that will fail to cause the neuron to spike
% IMPORTANT: chaning I = 0.3 will cause the neuron to spike

% capacitance and leak resistance
C = 1 % nF
R = 40 % M ohms

% I & F implementation dV/dt = - V/RC + I/C
% Using h = 1 ms step size, Euler method

V = 0;
tstop = 1000;
abs_ref = 5; % absolute refractory period 
ref = 0; % absolute refractory period counter
V_trace = []; % voltage trace for plotting
V_th = 10; % spike threshold
spikes=0;
for t = 1:tstop
  
   if ~ref
     V = V - (V/(R*C)) + (I/C);
   else
     ref = ref - 1;
     V = 0.2*V_th; % reset voltage
   end
   
   if (V > V_th)
     V = 50;  % emit spike
     ref = abs_ref; % set refractory counter
     spikes=spikes+1;
   end

   V_trace = [V_trace V];

end
  
  plot(V_trace)