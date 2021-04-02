% start matlabbasketball
% call all functions responsible for running game



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
drawHoop(hoop);
disp('data');
disp(hoop.x);
disp(hoop.y);
drawTrajectory(ball, hoop.x, hoop.y);


