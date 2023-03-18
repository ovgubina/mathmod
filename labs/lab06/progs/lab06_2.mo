model lab06_2
  constant Integer N = 14000;
  constant Integer I_0 = 114;
  constant Integer R_0 = 14;
  constant Integer S_0 = N-I_0-R_0;
  constant Real a = 0.01;
  constant Real b = 0.02;
  Real s(start=S_0);
  Real i(start=I_0);
  Real r(start=R_0);
  Real t = time;
equation
  der(s) = -a*s;
  der(i) = a*s-b*i;
  der(r) = b*i;
  annotation(experiment(StartTime = 0, StopTime = 100.0),
    Documentation);
end lab06_2;