%%%% HW 5, problem 3

clear all
format long

global L alpha k
k=0.001; alpha = 50; L=1;
N=5000;

x=linspace(0,L,1000); %%%% create an array for x from 0 to L with 1000 points
plot(x, sum(N, x, 0), 'k')
axis([0 L -5 60])
hold on %%%% a command so that different curves can appear on the same figure
plot(x, sum(N, x, 60), 'r')
plot(x, sum(N, x, 300), 'g')
plot(x, sum(N, x, 600), 'b')
plot(x, sum(N, x, 1000), 'm')
legend({'$t=0$','$t=60$','$t=300$','$t=600$','$t=1000$'},'Interpreter','latex', 'Location', 'northwest')
xlabel('Bar Position (m)') 
ylabel('Temperature (degrees C)')
title('Temperature Along Bar Over Time, 5000 terms')


function lambda = lamb(n)
global L
lambda = ((n+0.5)^2)*pi^2/L^2;
end

function ter = term(n, x, t)
global L alpha k
cof = 8*alpha*L/pi^2;

ter = cof*(((-1)^n)/((2*n+1)^2))*exp(-k*t*lamb(n))*sin((n+0.5)*pi*x/L);
end

function summ = sum(n, x, t)
summ = 0;
for(it = 0:n)
    summ = summ + term(it, x, t);
end
end

