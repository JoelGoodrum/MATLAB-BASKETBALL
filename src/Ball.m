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
            ball.initialV = 0;
            ball.angle = 0;  % degrees
            ball.initialY = 5; % initial height off the ground

            ball.initialVx = getInitialVx(ball);
            ball.initialVy = getInitialVy(ball);
            
        end
        
        function output = getInitialVx(obj)
            output = obj.initialV * cosd(obj.angle);
        end
        
       
        
        function output = getInitialVy(obj)
            output = obj.initialV * sind(obj.angle);
        end
        
        function output = drawTrajectory(obj, hoop, ax, fig)
            
            
            score = "false"; 
            a = obj.gravity * 0.5;
            b = getInitialVy(obj);
            c = obj.initialY;
            output = (-b -sqrt(b * b - (4 * a * c))) / (2 * a);
            timedx = 0.1; % how fast time goes by
            
            
            time = 0;
            y = 0; % height of ball according to time
            x = 0; % position of ball acording to time
           
           
            while(y > -0.1)
                y = (a * (time.^2)) + (b * time) + c;
                x = time * obj.initialVx;
                if(score == "false")
                    score = isScore(x, y, hoop.x, hoop.y);
                end
                pause(0.01);
                plot(ax,x,y,"o")
      
                time =  time + timedx;
            end
            
            if(score == "false")
                score = "MISSED!"
            else
                score = "SCORE!"
            end
            
            scoreText = uilabel(fig, 'Position',[450,500,180,40],'Text',score,'FontSize',30);
            pause(2);
            scoreText.Text = "";
            

            function output = isScore(x, y, hoopX, hoopY)
                dev = 10;
                if(y > (hoopY - dev) && y < (hoopY + dev))
                    if(x > hoopX && x < (hoopX + 5))
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