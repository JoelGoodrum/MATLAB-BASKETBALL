% start matlabbasketball
% call all functions responsible for running game

global inAir
inAir = false;

% make objects
ball = Ball;
player = Player;
hoop = Hoop;
env = Environment;
game = GameFunctions;


% set initial variables
setBallVar(ball);
setHoopVar(hoop);

% UI
width = 1000;
height = 600;
fig = uifigure('Position',[300 300 width height]);


% plot area
ax = uiaxes(fig);
ax.Units = 'pixels';
ax.Position = [100 120 800 380];
hold(ax, 'on');
axis(ax,[-2 40 -10 40]);


% sliders
forceText = uilabel(fig, 'Position',[310,85,180,40],'Text','Force','FontSize',20);
force = uislider(fig, 'Position', [250 80, 180 ,10],'ValueChangedFcn', @(sld,event) updateForce(sld,ball));
force.Limits = [0 50];

forceText = uilabel(fig, 'Position',[600,85,180,40], 'Text','Angle','FontSize',20);
angle = uislider(fig, 'Position', [530 80, 180 ,10], 'ValueChangedFcn', @(sld,event) updateAngle(sld,ball));
angle.Limits = [0, 90];

% buttons
shootBtn = uibutton(fig, 'Position',[110,60,100,50],'Text','Shoot','FontSize',20,'ButtonPushedFcn', @(btn, event2, event3, event4) shoot(btn, ball, hoop, ax));





% draw hoop
drawHoop(hoop, ax);

function resetAxes(ax,hoop)
    cla(ax,'reset');
    hold(ax, 'on');
    axis(ax,[-2 40 -10 40]);
    drawHoop(hoop, ax);
    return
end


function shoot(btn,ball, hoop, ax)
    
    global inAir; % checks if ball is in action
    if(inAir == false)
        inAir = true;
        resetAxes(ax,hoop);
        drawTrajectory(ball, hoop, ax);
        inAir = false;
    end
  
end
    

function updateForce(sld, ball)
    ball.initialV = sld.Value;
end

function updateAngle(sld, ball)
    ball.angle = sld.Value;
end



