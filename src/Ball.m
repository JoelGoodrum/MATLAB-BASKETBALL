% Ball variables
% physics formulas https://www.youtube.com/watch?v=aY8z2qO44WA&t=268s

classdef Ball
    properties
        mass = 624; % in grams
        x = 0;
        y = 0;
        initialX = 0;
        initialY = 0;
        initialV = 0; % in m/s
        initialVx = 0;
        initialVy = 0;
        angle = 0; % in degrees
        tension = 0;
        timeInAir = 0;
        gravity = -9.8 % m/s
    end
    
    methods
        function output = getInitialVx(obj)
            output = obj.initialV * cosd(obj.angle);
        end
        
        function output = getInitialVy(obj)
            output = obj.initialV * sind(obj.angle);
        end
        
        function output = getTime(obj)
            a = obj.gravity * 0.5;
            b = obj.initialVy;
            c = obj.initialY;
            output = (-b -sqrt(b * b - (4 * a * c))) / (2 * a);
            t = 0:0.1:5;
            s = (a * (t.^2)) + (b * t) + c;
            plot(t,s);
        end
        
        function output = getDistance(obj)
            output = obj.timeInAir * obj.initialVx;
        end
        
    end
end