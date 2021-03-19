% start matlabbasketball
% call all functions responsible for running game



% make objects
ball = Ball;
player = Player;
hoop = Hoop;
env = Environment;


% set initial variables
ball.initialV = 20;
ball.angle = 50;
ball.initialY = 5;

ball.initialVx = getInitialVx(ball);
ball.initialVy = getInitialVy(ball);

disp(getTime(ball));

% display graph