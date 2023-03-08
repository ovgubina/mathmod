model lab05
  constant Integer x_0 = 13;
  constant Integer y_0 = 18;
  constant Real a = 0.39;
  constant Real b = 0.036;
  constant Real c = 0.19;
  constant Real d = 0.048;
  Real x(start=x_0);
  Real y(start=y_0);
  Real t = time;
equation
  der(x) = -c*x+d*x*y;
  der(y) = a*y-b*x*y;
  annotation(experiment(StartTime = 0, StopTime = 60.0),
    Documentation);
end lab05;
