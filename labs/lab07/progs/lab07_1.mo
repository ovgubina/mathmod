model lab07_1
  constant Integer N = 810;
  constant Integer n_0 = 11;
  constant Real a_1 = 0.64;
  constant Real a_2 = 0.00014;
  Real n(start=n_0);
  Real t = time;
equation
  der(n) = (a_1+a_2*n)*(N-n);
  annotation(experiment(StartTime = 0, StopTime = 50.0),
    Documentation);
end lab07_1;
