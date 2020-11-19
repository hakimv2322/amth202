%%%% HW 2, problem 3

x=linspace(-pi,pi,100); %%%% create an array for x from -pi to pi with 100 points
plot(x,sin(x))
hold on %%%% a command so that different curves can appear on the same figure
plot(x,(1/sqrt(2))*(1+(x-pi/4)-(x-pi/4).^2/2-(x-pi/4).^3/6),'go')
legend({'$f(x)=\sin{x}$','$T_4(x)$'},'Interpreter','latex', 'Location', 'southeast')
% % 
