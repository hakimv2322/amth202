%%%% HW 2, problem 3

x=linspace(-.5,.5,100); %%%% create an array for x from -.5 to .5 with 100 points
plot(x,1./(1-x))
hold on %%%% a command so that different curves can appear on the same figure
plot(x,1+x+x.^2+x.^3,'go')
legend({'$f(x)=\frac{1}{1-x}$','$T_4(x)$'},'Interpreter','latex', 'Location', 'southeast')
% % 
