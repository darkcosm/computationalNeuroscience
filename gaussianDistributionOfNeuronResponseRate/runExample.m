%you need the Symbolic Math toolbox as well as MATLAB for this script.
p=randn(60,1); %col. vector of 60 random numbers from N(0,1) is your random sample
%arithmetic mean mu = mean(p); 
%standard deviation  sigma = std(p); 
mu5 = 5; sigma5 = .5; % produces S1 normal distribution
mu7 = 7; sigma1 = 1; % produces S2 normal distribution
if sigma5^2 ~= 0 % standard deviation squared must be non-zero 
%probability density function of normal distribution curve
%i.e. Gaussian function to use with ezplot
    pdf5 = @(x) exp( -(((x-mu5).^2.)/(2*sigma5^2)) )/((sqrt(2*pi))*sigma5);
    pdf7 = @(x) exp( -(((x-mu7).^2.)/(2*sigma1^2)) )/((sqrt(2*pi))*sigma1);   
   
    %plot the normal probability curve
     fg = figure;
  
      pdf5data = pdf5(p);
      pdf7data = pdf7(p);
     
% -------------------------------------------------------------------------
    pdf5ezplot = ezplot( pdf5, [0, 10, 0, 1]);
    pdf5Xdata = get(pdf5ezplot, 'XData');
    pdf5Ydata = get(pdf5ezplot, 'YData');
    hold on;
    pdf7ezplot = ezplot( pdf7, [0, 10, 0, 1]);
    pdf7Xdata = get(pdf7ezplot, 'XData');
    pdf7Ydata = get(pdf7ezplot, 'YData');
    set(pdf5ezplot, 'color', [1 0 0]);
    grid on;
    hold off;

    plotfg = figure;
    plot(pdf5Xdata, pdf5Ydata);
    hold on;
    plot(pdf7Xdata, pdf7Ydata);

end;