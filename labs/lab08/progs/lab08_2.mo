model lab08_2
  constant Integer N = 23;
  constant Real M01 = 2.5;
  constant Real M02 = 1.8;
  constant Integer p_cr = 20;
  constant Integer q = 1;  
  constant Integer tau1 = 16; 
  constant Integer tau2 = 19;
  constant Integer p1 = 13; 
  constant Integer p2 = 11;
  Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
  Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
  Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
  Real c1 = (p_cr-p1)/(tau1*p1);
  Real c2 = (p_cr-p2)/(tau2*p2);
  Real M1(start=M01);
  Real M2(start=M02);
  Real t = time;
equation
  der(M1) = (c1/c1)*M1-(a1/c1)*M1*M1-(b/c1+0.0017)*M1*M2;
  der(M2) = (c2/c1)*M2-(a2/c1)*M2*M2-(b/c1)*M1*M2;
  annotation(experiment(StartTime = 0, StopTime = 50.0),
    Documentation);
end lab08_2;
