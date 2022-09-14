function piEstimate = estimationOfPiUsingTol(tol)

    NInside = 0;
    Ntotal = 0;
    x = 0;

   % This while loop will keep on generating a random point and determine
   % whether or not it's within the circle. 
   % The Pi_estimate is updated upon the completion of a loop and continues
   % till we get a Pi_estimate value that satisfies
   % |pi_esti - pi| / pi <= tol

   while abs(x - pi) / pi > tol
       x_coord = rand * 2 - 1;
       y_coord = rand * 2 - 1;
       Ntotal = Ntotal + 1;
       if norm([x_coord,y_coord]) <= 1
            NInside = NInside + 1; 
       end
       x = 4 * NInside / Ntotal; 
   end  

   piEstimate = x;
end