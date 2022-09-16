# AMS-325-Homework-2

## Homework 2 Task 1
NumberOfOccurences is a function that takes a number argument and returns 2 to the power of
that number.
estimationOfPi is also a function that takes a number argument (N-total) and returns the Pi
estimation.
MainQuestion1 utilizes both functions to plot two graphs that showcases the relationship 
between Pi estimation and N-total.

For task 1 of the homework, I created two function: NumberOfOccurences
and estimationOfPi. The former takes the number n as an argument that can help increase N-total exponentially to the power of 2^n. The latter uses a for loop to generate random points and determines whether they are inside or outside the circle by seeing if their distance was greater than 1, the radius of the circle. The loop lasts till the N-total, which is given by NumberOfOccurences. MainQuestion1.m completes task 1 by running a for loop that calls NumberOfOccurences.and estimationOfPi stores their value into their own respective vectors to be  graphed. Two distinct graphs are plotted, where x is the N-total, left y-axis is the absolute value of Pi_estimate - Pi, and right y-axis is Pi_estimate. Finally, the graph is saved as an SVG file called “problem 1b”. 

## Homework 2 Task 2
Tol is a function that takes the number "n" as an argument and returns the value of 2 to the power of negative n.
estimationOfPiUsingTol is a function that takes Tol as an argument and uses a while loop to randomly generates a point that will determine whether it's in a circle or not. Pi_estimate is updated upon the completion of each loop until the while loop is satisfied and returns that Pi_estimate.
MainQuestion2 utilizes both functions to plot the time it takes to compute a Pi_estimation for a certain Tol against Tol.

For task 2 of the homework, I created two functions: Tol and estimatationOfPiUsingTol. Tol takes the number "n" as an argument and returns the value of 2 to the power of negative n. estimationOfPiUsingTol takes Tol as an argument and uses a while loop to randomly generates a point and determines whether it's in a circle or not. Pi_estimate is updated upon the completion of each loop until the condition “ | Pi_estimate - Pi | / Pi <= tol ”  is satisfied, returning that specified Pi_estimate. Then, in MainQuestion2.m, both of the functions are utilized in a for loop where we record the time elapsed for each estimationOfPiUsingTol using Tic Toc as Tol returns a smaller value every loop. Finally, we plot the computation time against Tol, saving the graph as an SVG file called “problem 2b”.

## Homework 2 Task 3
MonteCarloSimulation.m  will create a simulation similar to the Monte Carlo Method by plotting 1000 randomly generated points. It will record and save each points when they are graphed and saves it into an avi file.

For task 3 of the homework, I created MonteCarloSimulation.m. The file is a simulation of the Monte Carlo method, where a for loop is ran a thousand times to generate 1000 random points. Each time, if the point was less than 1, the point will be green. Otherwise, if the point fails outside the circle, the color will be red. The graph is then recorded into individual “frames” into an  array using the function getframe. Finally, the VideoWriter function creates an avi file  and the writeVideo function will store the frames from the movie array into the avi file called “MonteCarloSimulation.avi”.
