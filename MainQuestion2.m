
% This Main will use a for loop to call the functions: Tol and estimationOfPiUsingTol.
% The time it takes for Pi-estimated to be computed will be graphed against
% the given value of Tol for 2^-k for k = 5,....13

Tol_array = zeros(1,9);
TimeElapsed = zeros(1,9);

% Tol will give the value 2^-i and is stored in Tol_array.
% Tol's return is used as an argument for computing estimationOfPiUsingTol.
% The Tik Toc function is then used to time the length of
% each Pi_estimation computation and store that in the TimeElapsed array.
for i = 5:13 
    Tol_array(i - 4) = Tol(i);
    tic;
    estimationOfPiUsingTol(Tol_array(i-4));
    TimeElapsed(i - 4) = toc;  
end

% We use the plot function to plot the TimeElapsed Vector vs 
% Tol_array vector
% ***The graph should be run multiple times for the best results***
figure;
plot(TimeElapsed,Tol_array);
title("Computation Cost vs Tol ");
xlabel("Computation Cost (seconds)");
ylabel("Tol");

%saves the figure into a svg file
print question2b.svg -dsvg



