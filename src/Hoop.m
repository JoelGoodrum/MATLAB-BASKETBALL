% hoop obj variables
classdef Hoop
    properties
        % center position
        x = 0;   
        y = 0;
        
        % radius
        r = 10; %cm
    end
    
    methods
        function output = setHoopVar(hoop)
            hoop.x = 100;
            hoop.y = 10;
            hoop.r = 10;
            disp('hoop var set')
        end
        
        function output = drawHoop(hoop)
            x = -10:0.1:10;
            yPositive = x .* x;
            yNegative = (x .* x .* -1) + 200;
            plot(yPositive);
            hold on
            plot(yNegative);
            hold off
        end
    end
    
end