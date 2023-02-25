model lab3_1
  constant Integer x_0 = 19300;
  constant Integer y_0 = 39000;
  constant Real a = 0.46;
  constant Real b = 0.7;
  constant Real c = 0.82;
  constant Real h = 0.5;
  Real x(start=x_0);
  Real y(start=y_0);
  Real t = time;
equation
  der(x) = -a*x - b*y + sin(0.5*t);
  der(y) = -c*x - h*y + cos(1.5*t);
  annotation(experiment(StartTime = 0, StopTime = 3.0),
    Documentation);
end lab3_1;
