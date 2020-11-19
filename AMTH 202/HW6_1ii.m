%%%% HW 6, problem 1e

clear all
format long

A0 = 4/3; L=2;

x=linspace(-L,L,1000); %%%% create an array for x from 0 to L with 1000 points
plot(x, 1+x.^2, 'b')
axis([-L L -0.1 2.5])
hold on %%%% a command so that different curves can appear on the same figure
% plot(x, A0, 'r')
% plot(x, A0+sum(1, x), 'g')
plot(x, A0+sum(3, x), 'r')
% plot(x, A0+sum(999, x), 'm')
% legend({'$1+x^2$','1 term','2 terms','4 terms','1000 terms'},'Interpreter','latex', 'Location', 'northwest')
% xlabel('x') 
% ylabel('y')
% title('Temperature Along Bar Over Time, 5000 terms')



function dum = term(n, x)
cof = 4/(pi^2);

dum = cof*(((-1)^n)*cos(n*pi*x))/(n^2);
end

function dum = sum(n, x)
dum = 0;
for(it = 1:n)
    dum = dum + term(it, x);
end
end

