model lab07_3
  constant Integer N = 810;
  constant Integer n_0 = 11;
  Real n(start=n_0);
  Real t = time;
equation
  der(n) = (0.7*t+0.4*cos(t)*n)*(N-n);
  annotation(experiment(StartTime = 0, StopTime = 0.5),
    Documentation);
end lab07_3;
