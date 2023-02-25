model lab3_2
  constant Integer x_0 = 19300;
  constant Integer y_0 = 39000;
  constant Real a = 0.38;
  constant Real b = 0.73;
  constant Real c = 0.5;
  constant Real h = 0.28;
  Real x(start=x_0);
  Real y(start=y_0);
  Real t = time;
equation
  der(x) = -a*x - b*y + sin(2*t) + 1;
  der(y) = -c*x*y - h*y + cos(2*t);
  annotation(experiment(StartTime = 0, StopTime = 3.0),
    Documentation);
end lab3_2;
