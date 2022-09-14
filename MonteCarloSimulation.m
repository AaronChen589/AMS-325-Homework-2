
% MonteCarloSimulator will create a simulation of the Monte Carlo Method
% by plotting 1000 randomly generated


% Defined the range of the graph and increased the interval length of axis 
% of [-1.0,1.0] to [-1.1,1.1] for a better viewing experience
figure
axis([-1.1,1.1,-1.1,1.1])
grid on
axis square
title('Monte Carlo Simulation')

% A for loop to generate 1000 random points and to determine whether they
% are "inside" or "outside" the circle
 for i = 1:1000
     hold on
     x_coord = rand * 2 - 1;
     y_coord = rand * 2 - 1;
     %if the coordinate is within the circle, we plot a green circle
     if norm([x_coord,y_coord]) <= 1
         scatter(x_coord,y_coord,20,'green');
     % if the coordinate is outside the circle, we plot a red circle 
     else
         scatter(x_coord,y_coord,20,'red');
     end

     % This gets the frame of each new point being added on to the graph
     % and stores that into the movie array
     movie(i) = getframe;
 end
 hold off

 % The VideoWriter function creates an avi file.
 % And the writeVideo function will store the frames from the movie array
 % into the avi file.
 video  = VideoWriter('Monte Carlo Simulation');
 open(video);
 writeVideo(video, movie);
 close(video);
 