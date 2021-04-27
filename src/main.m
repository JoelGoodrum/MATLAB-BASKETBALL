% start matlabbasketball
% call all functions responsible for running game

% UI
width = 1000;
height = 600;
fig = uifigure('Position',[300 300 width height]);

% plot area

ax = uiaxes(fig);
ax.Units = 'pixels';
ax.Position = [100 120 800 380];



% zoom out variables
hold(ax, 'on');
axis(ax,[-2 40 -10 40]);

% make objects
ball = Ball;
player = Player;
hoop = Hoop;
env = Environment;
game = GameFunctions;



% set initial variables
setBallVar(ball);
setHoopVar(hoop);


% draw hoop
drawHoop(hoop, ax);
drawTrajectory(ball, hoop.x, hoop.y, ax);



