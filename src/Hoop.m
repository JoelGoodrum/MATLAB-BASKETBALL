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
            hoop.x = 8;
            hoop.y = 80;
            hoop.r = 10;
            disp('hoop var set')
        end
        
        function output = drawHoop(hoop)
            x1 = hoop.x;
            x2 = hoop.x + 1;
            
            plot(x1,hoop.y,"*");
            hold on
            plot(x2,hoop.y,"*");
            hold on
        end
        
    end
    
end