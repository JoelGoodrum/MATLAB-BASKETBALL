% start matlabbasketball
% call all functions responsible for running game



% make objects
ball = Ball;
player = Player;
hoop = Hoop;
env = Environment;


% set initial variables
ball.initialV = 8.5;
ball.angle = 30;
getInitialVx(ball);

% display graph