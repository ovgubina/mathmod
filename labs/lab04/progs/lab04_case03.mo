model lab04_case03
  constant Integer x_0 = -2;
  constant Integer y_0 = 0;
  constant Real a = 1.0;
  constant Real b = 11.0;
  Real x(start=x_0);
  Real y(start=y_0);
  Real t = time;
equation
  der(x) = y;
  der(y) = 2*cos(t)-a*y-b*x;
  annotation(experiment(StartTime = 0, StopTime = 60.0),
    Documentation);
end lab04_case03;
