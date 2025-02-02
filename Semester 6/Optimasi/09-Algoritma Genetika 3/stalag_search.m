clear
close all
clc

%% PROVIDING THE SEARCH SPACE FOR THE FUNCTION
x=linspace(0,0.6,150);
y=linspace(0,0.6,150);
[X,Y]=meshgrid(x,y);
num_cases=50; %Number of itreation for which the function will evaluate the fitness

%% CREATING THE SURFACE PLOT OF STALAGEMITE FUNCTION
for i=1:length(X)
for j=1:length(Y)
input_vector(1)=X(i,j);
input_vector(2)=Y(i,j);
f(i,j)=stalagmite(input_vector); %values of function in given search space
end
end
%surfc(X,Y,-f); %generating the surface

%% STATISTICAL BEHAVIOUR (UNBOUNDED)
tic %calculating the study time through tic and toc command
for i=1:num_cases
[inputs,fopt(i)]=ga(@stalagmite,2); %calculating the optimized value of the function
xopt(i)=inputs(1); %at each iteration
yopt(i)=inputs(2);
end
study1_time=toc %displaying the time taken to evaluate

% PLOTING THE GRAPH
figure(1)
subplot(2,1,1)
surfc(X,Y,-f);
hold on
shading interp
plot3(xopt,yopt,-fopt,'marker','o','markersize',5,'markerfacecolor','r');
xlabel('x');
ylabel('y');
grid on
subplot(2,1,2)
plot(-fopt);
xlabel('iterations')
ylabel('function min value')