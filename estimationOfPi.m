function Pi_estimate = estimationOfPi(num)
    

    % Counter that increments when the point is inside circle
    NInside = 0;
    
    % Each time it loops, a new x and y coordinate is randomly generated
    % from the range of (-1,1). Loop terminates after reaching the
    % specified function argument.
    for i = 1:num
        x_coord = rand * 2 - 1;
        y_coord = rand * 2 - 1;
        
        % Checks if the distance of the random coordinates is greater than
        % 1, which is the the radius of the circle. 
        % If true, the coordinate is outside the circle and the counter
        % is incremented by 1.

        if norm([x_coord,y_coord]) <= 1
            NInside = NInside + 1; 
        end
    end

    Pi_estimate = 4 * NInside / num;
    
end
   
