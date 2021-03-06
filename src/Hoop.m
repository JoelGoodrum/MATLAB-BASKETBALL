% hoop obj variables
classdef Hoop < handle
    
    properties
        % center position
        x = 0;   
        y = 0;
        
        % radius
        r = 10; %cm
    end
    
    methods
        
        function output = setHoopVar(hoop)
            hoop.x = 29;    % meters
            hoop.y = 3;     % meters
            hoop.r = 10;
           
        end
        
        function output = drawHoop(hoop, ax)
            x1 = hoop.x;
            x2 = hoop.x + 5;
            
            plot(ax, x1,hoop.y,"*");
            plot(ax, x2,hoop.y,"*");
           
        end
        
    end
    
end