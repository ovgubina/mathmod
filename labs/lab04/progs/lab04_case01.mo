model lab04_case01
  constant Integer x_0 = -2;
  constant Integer y_0 = 0;
  constant Real b = 1.5;
  Real x(start=x_0);
  Real y(start=y_0);
  Real t = time;
equation
  der(x) = y;
  der(y) = -b*x;
  annotation(experiment(StartTime = 0, StopTime = 60.0),
    Documentation);
end lab04_case01;
