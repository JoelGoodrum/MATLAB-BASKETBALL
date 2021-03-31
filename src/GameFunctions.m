classdef GameFunctions < handle
    
    methods
        function output = setHoopVar(ball)
            ball.initialV = 20;
            ball.angle = 50;
            ball.initialY = 5;

            ball.initialVx = getInitialVx(ball);
            ball.initialVy = getInitialVy(ball);
            disp("vars set")
        end
        
        function output = drawHoop(hoop)
            y = hoop.x
            plot(y,"*")
        end
    end
end