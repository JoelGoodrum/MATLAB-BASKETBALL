% Ball variables
classdef Ball
    properties
        mass = 624; % in grams
        x = 0;
        y = 0;
        initialV = 0; % in m/s
        initialVx = 0;
        initialVy = 0;
        angle = 0; % in degrees
        tension = 0;
    end
    
    methods
        function output = getInitialVx(obj)
            output = obj.initialV * cosd(obj.angle)
        end
    end
end