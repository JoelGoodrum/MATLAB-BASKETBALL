% Ball variables
% physics formulas https://www.youtube.com/watch?v=aY8z2qO44WA&t=268s

classdef Ball < handle
    properties
        mass = 6240; % in grams
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
        function output = setBallVar(ball)
            ball.initialV = 50;
            ball.angle = 70;
            ball.initialY = 5;

            ball.initialVx = getInitialVx(ball);
            ball.initialVy = getInitialVy(ball);
            disp('ball data set')
        end
        
        function output = getInitialVx(obj)
            output = obj.initialV * cosd(obj.angle);
        end
        
        function output = getInitialVy(obj)
            output = obj.initialV * sind(obj.angle);
        end
        
        function output = drawTrajectory(obj, hoopX, hoopY, ax)

            
            score = "false"; 
            a = obj.gravity * 0.5;
            b = obj.initialVy;
            c = obj.initialY;
            output = (-b -sqrt(b * b - (4 * a * c))) / (2 * a);
            
            x = 0
            y = (a * (x.^2)) + (b * x) + c;
           
           
            while(y > 0)
                y = (a * (x.^2)) + (b * x) + c;
                if(score == "false")
                    score = isScore(x, y, hoopX, hoopY);
                end
                pause(0.1);
                plot(ax,x,y,"o")
      
                x =  x + 0.1;
            end
            
            % text(4,0,score);

            function output = isScore(x, y, hoopX, hoopY)
                dev = 10;
                if(y > (hoopY - dev) && y < (hoopY + dev))
                    if(x > hoopX && x < (hoopX + 1))
                        output = "true";
                        return;
                    end
                    
                end
                output = "false";
                return;
    
            end
            
        end
        
        

        
        function output = getDistance(obj)
            output = obj.timeInAir * obj.initialVx;
        end
        
    end
end