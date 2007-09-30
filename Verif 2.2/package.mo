import "C:/Cellier/Classes/Ece449/BondLib/BondLib.mo";


package Verif

  annotation (uses(Modelica(version="2.2.1"), BondLib(version="2.1a")), version="2.1a");
  model test1

    annotation (Diagram,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Highpass

V1 1 0 sin (0 1 20 0 0)
R1 2 0 200
C1 1 2 0.00001

.TRAN 0.000001 1 0 0.0001
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The blue curve represents the capacitive current as computed by</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>, whereas the red curve represents the same quantity as obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  The</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> results were imported into </b></font> <font color=red><b>Dymola</b></font><font color=blue><b> in</b></font> <b>CSV</b> <font color=blue><b>format, as suggested by Hilding Elmqvist.</b></font> <p>

<font color=blue><b>The (correct) simulation results remain unchanged with default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>).</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))),
      experiment(StopTime=0.2),
      experimentSetupOutput);
    BondLib.Electrical.Analog.Sources.SineVoltage V0(V=1, freqHz=20)
      annotation (extent=[-50,0; -30,20],  rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5)
      annotation (extent=[-10,30; 10,50]);
    BondLib.Electrical.Analog.Spice.R R1(R=200)
      annotation (extent=[30,0; 50,20],  rotation=-90);
  equation
    connect(V0.p, C1.p) annotation (points=[-40,20; -40,40; -10,40],style(color=
           3, rgbcolor={0,0,255}));
    connect(C1.n, R1.p) annotation (points=[10,40; 40,40; 40,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(V0.n, Ground1.p) annotation (points=[-40,0; -40,-20; 0,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20],
        style(color=3, rgbcolor={0,0,255}));
  end test1;
  annotation (Diagram(
      Rectangle(extent=[-60,40; 60,-40], style(
          color=51,
          rgbcolor={255,255,85},
          thickness=4,
          fillColor=30,
          rgbfillColor={244,244,244})),
      Text(
        extent=[-42,30; 42,16],
        style(color=3, rgbcolor={0,0,255}),
        string="Verification package"),
      Text(
        extent=[-14,18; 14,8],
        style(color=3, rgbcolor={0,0,255}),
        string="for"),
      Text(
        extent=[-33,8; 35,-2],
        style(color=3, rgbcolor={0,0,255}),
        string="ModelicaSpice 2.1"),
      Text(
        extent=[-44,-32; 46,-40],
        style(color=3, rgbcolor={0,0,255}),
        string="All models also exist in Spice"),
      Text(
        extent=[-33,-4; 36,-14],
        style(color=3, rgbcolor={0,0,255}),
        string="(part of BondLib 2.1)")),
Documentation(info="<html>
Verification package for BondLib.
</html>
"), version="1",
    conversion(from(version="", script="ConvertFromVerif_.mos")),
    uses(BondLib(version="2.1")));

  model test2

    annotation (Diagram,
      experiment(StopTime=1e-007),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Inverter

V1      4       0       5
V2      2       0       PWL(0 0 100n 5)
Rl      4       1       3

M1 3 2 0 0 MODN
M2 1 2 3 1 MODP

.MODEL MODN NMOS Level=1 RD=1 RS=1
.MODEL MODP PMOS Level=1 RD=1 RS=1

.print tran v(4)
.TRAN 0.01 100n 0 0.1n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test2a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test2b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test2c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) fails on this example.  The Newton iteration does not converge and the homotopy method leads to an even larger fast transient.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-50; 10,-30]);
    BondLib.Electrical.Analog.Spice.Mp Mp1(
      Level=1,
      RD=1,
      RS=1)                                annotation (extent=[20,34; 40,58]);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      Level=1,
      RD=1,
      RS=1)                                annotation (extent=[20,4; 40,28]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=5, duration=1e-7)
      annotation (extent=[-10,-20; 10,0], rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-50,-50; -30,-30]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[30,-50; 50,-30]);
    BondLib.Electrical.Analog.Spice.R R1(R=3)
      annotation (extent=[-10,50; 10,70]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V0(V=5)
      annotation (extent=[-50,-20; -30,0], rotation=-90);
  equation
    connect(Mp1.S, Mn1.D) annotation (points=[40,40; 40,22],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, V1.n)           annotation (points=[0,-30; 0,-20;
          -1.83691e-015,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Ground3.p)
      annotation (points=[40,10; 40,-30],  style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, V1.p)           annotation (points=[20,10; 1.83691e-015,10;
          1.83691e-015,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.D, R1.n) annotation (points=[40,52; 40,60; 10,60], style(color=
            3, rgbcolor={0,0,255}));
    connect(Mn1.G, Mp1.G) annotation (points=[20,10; 0,10; 0,40; 20,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mp1.D, Mp1.B)
      annotation (points=[40,52; 40,46], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Mn1.S)
      annotation (points=[40,16; 40,10], style(color=3, rgbcolor={0,0,255}));
    connect(V0.n, Ground2.p) annotation (points=[-40,-20; -40,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(V0.p, R1.p) annotation (points=[-40,0; -40,60; -10,60], style(color=
           3, rgbcolor={0,0,255}));
  end test2;

    model test2_II

    annotation (Diagram,
      experiment(StopTime=1e-007),
      Documentation(info="<html>
Comparison of <font color=red><b>BondLib</b></font> simulation results of <b>test2</b> and <b>test2_II</b>: <p>
<img src=\"../Images/test2d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) must fail on this example.  The reason is that the device temperature is now an additional state variable.  Default steady-state initialization requires that the derivative of the temperature be zero, which can only be accomplished if no currents flow through any of the resistors, which is incompatible with the electrical steady state.</b></font> <p>

<font color=blue><b>In order to get the default steady-state initialization to work correctly with the thermal ports connected, we would need to add a loss from the thermal capacitor to the environment, i.e., add a temperature source representing the ambient temperature and a thermal conduction from the thermal capacitor to the temperature source.</b></font> <p>

<font color=blue><b>This would allow the software to compute the steady-state temperature, i.e., the temperature value at which the circuit produces exactly as much heat as is being lost to the environment.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Spice.Mp Mp1(
        Level=1,
        RD=1,
        RS=1,
      TRD1=0.1,
      TRS1=0.1)                              annotation (extent=[20,34; 40,58]);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        Level=1,
        RD=1,
        RS=1,
      TRD1=0.1,
      TRS1=0.1)                              annotation (extent=[20,4; 40,28]);
      BondLib.Electrical.Analog.Sources.RampVoltage V1(V=5, duration=1e-7)
        annotation (extent=[-10,-20; 10,0], rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-50,-50; -30,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
    BondLib.Electrical.Analog.Spice.RampingSources.V V0(V=5)
      annotation (extent=[-50,-20; -30,0], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R1(R=3, TR1=0.1)
      annotation (extent=[-10,50; 10,70]);
    BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
      annotation (extent=[60,-30; 80,-10], rotation=-90);
    BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1
      annotation (extent=[60,-50; 80,-70]);
    equation
      connect(Mp1.S,Mn1. D) annotation (points=[40,40; 40,22],
          style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, V1.n)             annotation (points=[0,-30; 0,-20;
          -1.83691e-015,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground3. p)
        annotation (points=[40,10; 40,-30],  style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, V1.p)             annotation (points=[20,10; 1.83691e-015,10;
          1.83691e-015,0],
          style(color=3, rgbcolor={0,0,255}));
    connect(V0.n, Ground2.p) annotation (points=[-40,-20; -40,-30], style(color=
           3, rgbcolor={0,0,255}));
    connect(R1.p, V0.p) annotation (points=[-10,60; -40,60; -40,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(Mp1.D, R1.n) annotation (points=[40,52; 40,60; 10,60], style(color=
            3, rgbcolor={0,0,255}));
    connect(Mn1.G, Mp1.G) annotation (points=[20,10; 0,10; 0,40; 20,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mp1.D, Mp1.B)
      annotation (points=[40,52; 40,46], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Mn1.S)
      annotation (points=[40,16; 40,10], style(color=3, rgbcolor={0,0,255}));
    connect(R1.heatPort, Mp1.heatPort) annotation (points=[0,50; 10,50; 10,34;
          30,34], style(color=42, rgbcolor={191,0,0}));
    connect(R1.heatPort, Mn1.heatPort) annotation (points=[0,50; 10,50; 10,4;
          30,4], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_b, ThC1.port) annotation (points=[70,-31; 70,-50],
        style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, Mn1.heatPort) annotation (points=[70,-9; 70,4; 30,4],
        style(color=42, rgbcolor={191,0,0}));
    end test2_II;

  model test3

    annotation (Diagram,
      experiment(Algorithm="Radau"),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Two-way DC converter

V1 1 4 sin (0 5 20 0 0)

D1 0 1 diode
D2 0 4 diode
D3 1 3 diode
D4 4 3 diode

Rl 3 0 200
Cl 3 0 0.1

.model diode d is=1.e-6 rs=1
.TRAN 0.0001 1 0 0.01
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test3a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test3b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test3c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The circuit fails to simulate using</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b> with</b></font> <b>enforceStates = true</b><font color=blue><b>.  It dies with division 0/0 at time 0.  Hence I had to disable Dymola's state select algorithm by setting</b></font> <b>enforceStates = false</b><font color=blue><b>.  This shows that</b></font> <font color=red><b>Dymola's</b></font> <b>stateSelect</b> <font color=blue><b>feature doesn't always work yet.</b></font>  <font color=brown><b>(This problem has meanwhile been fixed, but only for</b></font> <b>test3</b><font color=brown><b>, not for</b></font> <b>test3_II</b><font color=brown><b>.)</b></font> <p>

<font color=red><b>Dymola</b></font> <font color=blue><b>chooses strange state variables with</b></font> <b>enforceStates = true</b><font color=blue><b>.  It chooses the diodic currents as state variables, which is bad news.  Hence it is better to keep</b></font> <b>enforceStates = false</b> <font color=blue><b>in this circuit.</b></font> <p>

<font color=blue><b>Also, the simulation results obtained by</b></font> <font color=red><b>Bondlib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are similar but not identical.  The diode models seem to be slightly different.  (</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>'s diode model has not yet been debugged very much.)</b></font> <p>

<font color=blue><b>Finally on this example,</b></font> <font color=red><b>Bondlib</b></font> <font color=blue><b>proceeds noticeably slower in its simulation in comparison with</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>.  There are probably still some chattering issues associated with the diode model in</b></font> <font color=red><b>Bondlib</b></font> <font color=blue><b>.  The execution speed problem goes away when using</b></font> <b>Radau-IIa</b> <font color=blue><b>as an integrator instead of</b></font> <b>DASSL</b><font color=blue><b>.</b></font> <p>

<font color=blue><b>The (correct) simulation results remain unchanged with default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>).</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      experimentSetupOutput);
  public
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,-80; 60,-60]);
    BondLib.Electrical.Analog.Spice.D D1(
      IS=1.e-6,
      RS=1,
      IBV=1.e-3,
      EG=1.11,
      enforceStates=false) annotation (extent=[-30,20; -50,40], rotation=90);
    BondLib.Electrical.Analog.Spice.D D2(
      IS=1.e-6,
      RS=1,
      IBV=1.e-3,
      EG=1.11,
      enforceStates=false) annotation (extent=[10,20; 30,40], rotation=-90);
    BondLib.Electrical.Analog.Spice.D D3(
      IS=1.e-6,
      RS=1,
      IBV=1.e-3,
      EG=1.11,
      enforceStates=false) annotation (extent=[-50,-20; -30,0], rotation=-90);
    BondLib.Electrical.Analog.Spice.D D4(
      IS=1.e-6,
      RS=1,
      IBV=1.e-3,
      EG=1.11,
      enforceStates=false) annotation (extent=[30,-20; 10,0], rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.sinV sinV1(V=5, freqHz=20)
      annotation (extent=[-90,0; -70,20], rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R1(R=200)
      annotation (extent=[70,-30; 90,-10], rotation=-90);
  equation
    connect(D1.p, D3.p)
      annotation (points=[-40,20; -40,0], style(color=3, rgbcolor={0,0,255}));
    connect(D4.n, D2.n)
      annotation (points=[20,0; 20,20], style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, D2.p) annotation (points=[-40,40; -40,50; 20,50; 20,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(D3.n, D4.p) annotation (points=[-40,-20; -40,-30; 20,-30; 20,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(sinV1.p, D1.n) annotation (points=[-80,20; -80,60; -10,60; -10,50;
          -40,50; -40,40], style(color=3, rgbcolor={0,0,255}));
    connect(sinV1.n, D3.n) annotation (points=[-80,0; -80,-40; -10,-40; -10,-30;
          -40,-30; -40,-20], style(color=3, rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p) annotation (points=[-40,20; -40,10; -60,10; -60,
          -60; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, Ground1.p)
      annotation (points=[50,-30; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[80,-30; 80,-60; 50,-60], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p, D4.n) annotation (points=[50,-10; 50,10; 20,10; 20,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, D4.n) annotation (points=[80,-10; 80,10; 20,10; 20,0], style(
          color=3, rgbcolor={0,0,255}));
  end test3;

    model test3_II

    annotation (Diagram,
      experiment(Algorithm="Radau"),
      Documentation(info="<html>
Comparison of <font color=red><b>BondLib</b></font> simulation results of <b>test3</b> and <b>test3_II</b>: <p>
<img src=\"../Images/test3d.png\"> <p>

The circuit now heats up.  The components were modeled to contain temperature-dependent resistor and capacitor values. <p>
<img src=\"../Images/test3e.png\"> <p>

The heat flow into the thermal capacitance shows the process of heating. <p>
<img src=\"../Images/test3f.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The circuit fails to simulate using</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b> with</b></font> <b>enforceStates = true</b><font color=blue><b>.  It dies with division 0/0 at time 0.  Hence I had to disable Dymola's state select algorithm by setting</b></font> <b>enforceStates = false</b><font color=blue><b>.  The problem is caused by a bad selection of state variables in this case.  Dymola now decides that it needs</b></font> <b>dynamic state selection</b><font color=blue><b>, which is even worse news than before.</b></font>  <font color=brown><b>There is evidently still an issue with</b></font> <font color=red><b>Dymola</b></font><font color=brown><b>'s state selection algorithm.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) must fail on this example.  The reason is that the device temperature is now an additional state variable.  Default steady-state initialization requires that the derivative of the temperature be zero, which can only be accomplished if no currents flow through any of the resistors, which is incompatible with the electrical steady state.</b></font> <p>

<font color=blue><b>In order to get the default steady-state initialization to work correctly with the thermal ports connected, we would need to add a loss from the thermal capacitor to the environment, i.e., add a temperature source representing the ambient temperature and a thermal conduction from the thermal capacitor to the temperature source.</b></font> <p>

<font color=blue><b>This would allow the software to compute the steady-state temperature, i.e., the temperature value at which the circuit produces exactly as much heat as is being lost to the environment.</b></font>
</html>"),
      Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="?",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1))),
      experimentSetupOutput);
  public
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[40,-80; 60,-60]);
      BondLib.Electrical.Analog.Spice.D D1(
        IS=1.e-6,
        RS=1,
        IBV=1.e-3,
        EG=1.11,
      TRS=0.01,
      enforceStates=false)   annotation (extent=[-30,20; -50,40], rotation=90);
      BondLib.Electrical.Analog.Spice.D D2(
        IS=1.e-6,
        RS=1,
        IBV=1.e-3,
        EG=1.11,
      TRS=0.01,
      enforceStates=false)   annotation (extent=[10,20; 30,40], rotation=-90);
      BondLib.Electrical.Analog.Spice.D D3(
        IS=1.e-6,
        RS=1,
        IBV=1.e-3,
        EG=1.11,
      TRS=0.01,
      enforceStates=false)   annotation (extent=[-50,-20; -30,0], rotation=-90);
      BondLib.Electrical.Analog.Spice.D D4(
        IS=1.e-6,
        RS=1,
        IBV=1.e-3,
        EG=1.11,
      TRS=0.01,
      enforceStates=false)   annotation (extent=[30,-20; 10,0], rotation=90);
      BondLib.Electrical.Analog.Spice.RampingSources.sinV sinV1(V=5, freqHz=20)
        annotation (extent=[-90,0; -70,20], rotation=-90);
      BondLib.Electrical.Analog.Spice.C C1(C=0.1, TC1=0.001)
        annotation (extent=[40,-30; 60,-10], rotation=-90);
      BondLib.Electrical.Analog.Spice.R R1(R=200, TR1=0.01)
        annotation (extent=[70,-30; 90,-10], rotation=-90);
    BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1
      annotation (extent=[-30,-70; -10,-90]);
    equation
      connect(D1.p,D3. p)
        annotation (points=[-40,20; -40,0], style(color=3, rgbcolor={0,0,255}));
      connect(D4.n,D2. n)
        annotation (points=[20,0; 20,20], style(color=3, rgbcolor={0,0,255}));
      connect(D1.n,D2. p) annotation (points=[-40,40; -40,50; 20,50; 20,40],
          style(color=3, rgbcolor={0,0,255}));
      connect(D3.n,D4. p) annotation (points=[-40,-20; -40,-30; 20,-30; 20,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(sinV1.p,D1. n) annotation (points=[-80,20; -80,60; -10,60; -10,50;
          -40,50; -40,40],   style(color=3, rgbcolor={0,0,255}));
      connect(sinV1.n,D3. n) annotation (points=[-80,0; -80,-40; -10,-40; -10,
          -30; -40,-30; -40,-20],
                               style(color=3, rgbcolor={0,0,255}));
      connect(D1.p,Ground1. p) annotation (points=[-40,20; -40,10; -60,10; -60,
          -60; 50,-60],   style(color=3, rgbcolor={0,0,255}));
      connect(C1.n,Ground1. p)
        annotation (points=[50,-30; 50,-60], style(color=3, rgbcolor={0,0,255}));
      connect(R1.n,Ground1. p) annotation (points=[80,-30; 80,-60; 50,-60], style(
            color=3, rgbcolor={0,0,255}));
      connect(C1.p,D4. n) annotation (points=[50,-10; 50,10; 20,10; 20,0], style(
            color=3, rgbcolor={0,0,255}));
      connect(R1.p,D4. n) annotation (points=[80,-10; 80,10; 20,10; 20,0], style(
            color=3, rgbcolor={0,0,255}));
    connect(D1.heatPort, D3.heatPort) annotation (points=[-50,30; -50,-10],
        style(color=42, rgbcolor={191,0,0}));
    connect(D2.heatPort, D4.heatPort)
      annotation (points=[10,30; 10,-10], style(color=42, rgbcolor={191,0,0}));
    connect(D3.heatPort, D4.heatPort) annotation (points=[-50,-10; -50,-50; 10,
          -50; 10,-10], style(color=42, rgbcolor={191,0,0}));
    connect(C1.heatPort, D4.heatPort) annotation (points=[40,-20; 40,-50; 10,
          -50; 10,-10], style(color=42, rgbcolor={191,0,0}));
    connect(R1.heatPort, C1.heatPort) annotation (points=[70,-20; 70,-50; 40,
          -50; 40,-20], style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, D4.heatPort) annotation (points=[-20,-70; -20,-50; 10,
          -50; 10,-10], style(color=42, rgbcolor={191,0,0}));
    end test3_II;

  model test3_III

    annotation (Diagram,
      experiment(Algorithm="Radau"),
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test3g.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>I tried to match the</b></font> <font color=red><b>Bondlib</b></font> <font color=blue><b>diode model parameter values with those of</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>.  Generally, my evaluation version of</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b> doesn't allow me to view the parameter window of their built-in models, but it does for the diode.</b></font> <p>

<font color=blue><b>Matching parameter values did not help.  There are no significant improvements in similarity.  I already noticed though from their parameter set that</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>uses different equations than </b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>for modeling the reverse leakage current.  From their parameter set, I conclude that</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>models the reverse leakage current in the same way as is being used by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>for its junction diode models inside the BJTs and MOSFETs.</b></font>  <font color=red><b>BondLib</b></font> <font color=blue><b>on the other hand is based on</b></font> <font color=red><b>HSpice</b></font><font color=blue><b>, which offers a more complex discrete diode model with several different modeling levels.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      experimentSetupOutput);
  public
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,-80; 60,-60]);
    BondLib.Electrical.Analog.Spice.D D1(
      RS=1,
      enforceStates=false,
      PB=0.75,
      BV=100,
      PHP=0.75,
      ISW=1e-6,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9,
      IS=1e-6,
      IBV=1e-4)            annotation (extent=[-30,20; -50,40], rotation=90);
    BondLib.Electrical.Analog.Spice.D D2(
      RS=1,
      enforceStates=false,
      PB=0.75,
      BV=100,
      PHP=0.75,
      ISW=1e-6,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9,
      IS=1e-6,
      IBV=1e-4)            annotation (extent=[10,20; 30,40], rotation=-90);
    BondLib.Electrical.Analog.Spice.D D3(
      RS=1,
      enforceStates=false,
      PB=0.75,
      BV=100,
      PHP=0.75,
      ISW=1e-6,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9,
      IBV=1e-4,
      IS=1e-6)             annotation (extent=[-50,-20; -30,0], rotation=-90);
    BondLib.Electrical.Analog.Spice.D D4(
      RS=1,
      enforceStates=false,
      PB=0.75,
      BV=100,
      PHP=0.75,
      ISW=1e-6,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9,
      IBV=1e-4,
      IS=1e-6)             annotation (extent=[30,-20; 10,0], rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.sinV sinV1(V=5, freqHz=20)
      annotation (extent=[-90,0; -70,20], rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R1(R=200)
      annotation (extent=[70,-30; 90,-10], rotation=-90);
  equation
    connect(D1.p, D3.p)
      annotation (points=[-40,20; -40,0], style(color=3, rgbcolor={0,0,255}));
    connect(D4.n, D2.n)
      annotation (points=[20,0; 20,20], style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, D2.p) annotation (points=[-40,40; -40,50; 20,50; 20,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(D3.n, D4.p) annotation (points=[-40,-20; -40,-30; 20,-30; 20,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(sinV1.p, D1.n) annotation (points=[-80,20; -80,60; -10,60; -10,50;
          -40,50; -40,40], style(color=3, rgbcolor={0,0,255}));
    connect(sinV1.n, D3.n) annotation (points=[-80,0; -80,-40; -10,-40; -10,-30;
          -40,-30; -40,-20], style(color=3, rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p) annotation (points=[-40,20; -40,10; -60,10; -60,
          -60; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, Ground1.p)
      annotation (points=[50,-30; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[80,-30; 80,-60; 50,-60], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p, D4.n) annotation (points=[50,-10; 50,10; 20,10; 20,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, D4.n) annotation (points=[80,-10; 80,10; 20,10; 20,0], style(
          color=3, rgbcolor={0,0,255}));
  end test3_III;

  model test4

    annotation (Diagram,
      experiment(Algorithm="Dassl"),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
3-input-NAND

VS1 1 0 pwl(0 0 0.599 0 0.6 12)
VS2 2 0 pwl(0 0 0.699 0 0.7 12)
VS3 3 0 pwl(0 0 0.799 0 0.8 12)

D1 4 1 diode
D2 4 2 diode
D3 4 3 diode

VC1 5 0 12
VC2 7 0 -12
VC3 9 0 12

R1 5 4 15000
R2 4 6 15000
R3 7 6 100000
R4 9 8 2200
Cl 4 6 0.01

Q1 8 6 0 modnpn

.model modnpn NPN
.model diode d is=1.e-6 rs=1

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test4a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test4b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test4c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comment 1:</u></b></font> <p>

<font color=blue><b>In </b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>, the zero-bias base-collector and base-emitter depletion capacitances,</b></font> <b>CJC</b> <font color=blue><b>and</b></font> <b>CJE</b><font color=blue><b>, cannot be set to zero.  In this circuit, the default values of</b></font> <b>1e-12</b> <font color=blue><b>led to numerical problems.  I had to enhance the base-emitter depletion capacitance to a value of </b></font> <b>CJE = 5.7e-12</b><font color=blue><b>.</b></font> <p>

<hr> <p>

<font size=5><b><u>Comment 2:</u></b></font> <p>

<font color=blue><b>Although the device seems to work correctly, the base voltages unfortunately look very different.  This problem still needs to be analyzed.  It is probably caused by a mismatch in the default</b></font> <b>RB</b> <font color=blue><b>parameter values between</b></font> <font color=red><b>ModelicaSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test4d.png\"> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test4e.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test4d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comment 3:</u></b></font> <p>

<font color=blue><b>Comparing the simulation results obtained by</b></font> <font color=red><b>ModelicaSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, one notices that there are differences:</b></font> <p>
<img src=\"../Images/test4k.png\"> <p>

<font color=red><b>BondLib</b></font> <font color=blue><b>switches later than</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  However this time around, the problem is with</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, rather than with</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>BondLib</b></font> <font color=blue><b>was told to model a jump of source voltage</b></font> <b>VS3</b> <font color=blue><b>at time</b></font> <b>t=0.8s</b> <font color=blue><b>from</b></font> <b>0V</b> <font color=blue><b>to</b></font> <b>12V</b><font color=blue><b>.  This is precisely what</b></font> <font color=red><b>Bondlib</b></font> <font color=blue><b>did.  In contrast,</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>was told the same thing, but chose to ignore the request and instead model a ramp starting at time</b></font> <b>t=0.799s</b> <font color=blue><b>and ending at time</b></font> <b>t=0.8s</b><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test4l.png\"> <p>

<font color=blue><b>This \"choice\" eliminated a fast transient within the</b></font> <b>BJT</b> <font color=blue><b>model, and also circumvented other types of numerical problems, but this should be the choice of the modeler to make, not of the simulation software.</b></font> <p>

<font color=blue><b>The knee in the simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>after time</b></font> <b>t=0.8s</b> <font color=blue><b>represents a feature within the junction diode model inside the</b></font> <b>BJT</b> <font color=blue><b>model that is turned on in the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>model and either is turned off in the corresponding</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>model, or possibly hasn't been modeled at all.</b></font> <p>

<hr> <p>

<font size=5><b><u>Comment 4:</u></b></font> <p>

<font color=blue><b>The most significant difference in simulation results is in the values of the base voltage of the</b></font> <b>BJT</b><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test4m.png\"> <p>

<font color=blue><b>The difference is clearly caused by different default values of the parasitic base resistance</b></font> <b>RB</b> <font color=blue><b>being used by the two models.  In a realistic</b></font> <b>BJT</b><font color=blue><b>, the base resistance assumes a value of at least a few hundred Ohms, possibly as much as 2 kOhms.  By choosing another value for the base resistance, the lower level of the base voltage can be moved within a wide range.  I don't know what parasitic resistance values</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>uses.</b></font> <p>

<font color=blue><b>The two spikes at times</b></font> <b>t=0.6s</b> <font color=blue><b>and</b></font> <b>t=0.7s</b> <font color=blue><b>are caused by jumps in the source voltages</b></font> <b>VS1</b> <font color=blue><b>and</b></font> <b>VS2</b><font color=blue><b>, which are being converted into ramps by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=blue><b>However, there are several issues within</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>that still need to be looked at.</b></font> <p>

<font color=blue><b>By default,</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>uses</b></font> <b>level=2</b> <font color=blue><b>as its default</b></font> <b>BJT</b> <font color=blue><b>modeling level.  I don't know, whether</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>uses the</b></font> <b>level=1</b> <font color=blue><b>or the</b></font> <b>level=2</b> <font color=blue><b>model as its default.  However, the default</b></font> <b>BJT</b> <font color=blue><b>model will die with default parameter values, because by default, the parasitic resistances are all zero:</b></font> <b>RB=RC=RE=0</b><font color=blue><b>, which leads to a division by zero at time</b></font> <b>t=0</b><font color=blue><b>.  Hence we should either change the default modeling level for the</b></font> <b>BJT</b> <font color=blue><b>to</b></font> <b>level=1</b><font color=blue><b>, or we should use more realistic values for the three parasitic resistances as default values.</b></font> <font color=brown><b>(This problem has been fixed in</b></font> <font color=red><b>BondLib 2.1a</b></font><font color=brown><b>.)</b></font> <p>

<font color=blue><b>There is still a modeling issue with</b></font> <font color=red><b>Dymola</b></font><font color=blue><b>.  It should be possible to either dim out inactive parameters from the parameter list as a function of the value of another parameter (in this case</b></font> <b>level</b><font color=blue><b>), or conditionally eliminate these parameters from the list altogether.  I haven't found a way for doing so until now.  For example, the</b></font> <b>level = 1</b> <font color=blue><b>model of the bipolar transistor doesn't use the parasitic resistances, even if values have been specified.  This should be properly indicated to the user.</b></font> <p>

<font color=blue><b>There is still also a simulation issue with</b></font> <font color=red><b>Dymola</b></font><font color=blue><b>.  If I switch to</b></font> <b>Radau-IIa</b> <font color=blue><b>from</b></font> <b>DASSL</b><font color=blue><b>, I obtain completely different simulation results:</b></font> <p>
<img src=\"../Images/test4n.png\"> <p>
<font color=blue><b>The red curve was produced using</b></font> <b>Radau-IIa</b><font color=blue><b>, whereas the blue curve was produced using</b></font> <b>DASSL</b><font color=blue><b>.  The result obtained from</b></font> <b>DASSL</b> <font color=blue><b>seems to be the correct one.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>,\" McGraw-Hill, p.176.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      experimentSetupOutput);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[60,-90; 80,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[8,60; 28,80]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-90,-90; -70,-70]);
    BondLib.Electrical.Analog.Spice.R R1(R=15e3)
      annotation (extent=[-30,30; -10,50], rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=100e3)
      annotation (extent=[20,-30; 40,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=2200)
      annotation (extent=[60,30; 80,50],   rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC1(V=12)
      annotation (extent=[-30,60; -10,80], rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC2(V=-12)
      annotation (extent=[20,-60; 40,-40], rotation=-90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC3(V=12)
      annotation (extent=[60,60; 80,80],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.01)
      annotation (extent=[-10,10; 10,30],  rotation=0);
    BondLib.Electrical.Analog.Sources.StepVoltage VS1(V=12, startTime=0.6)
      annotation (extent=[-60,-10; -80,-30]);
    BondLib.Electrical.Analog.Spice.D D1(
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-10; -30,-30],
                                                                rotation=180);
    BondLib.Electrical.Analog.Sources.StepVoltage VS2(V=12, startTime=0.7)
      annotation (extent=[-60,-30; -80,-50]);
    BondLib.Electrical.Analog.Spice.D D2(
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-30; -30,-50],
                                                                rotation=180);
    BondLib.Electrical.Analog.Sources.StepVoltage VS3(V=12, startTime=0.8)
      annotation (extent=[-60,-50; -80,-70]);
    BondLib.Electrical.Analog.Spice.D D3(
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-50; -30,-70],
                                                                rotation=180);
    BondLib.Electrical.Analog.Spice.R R2(R=15e3)
      annotation (extent=[-10,-10; 10,10], rotation=0);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      EMin=-100,
      EMax=40,
      GminDC=1e-12,
      VSUB=12,
      CJE=5.7e-12,
      Level=2,
      RB=10)   annotation (extent=[50,-12; 70,12]);
  equation
    connect(VC3.p, R4.n)
      annotation (points=[70,60; 70,50], style(color=3, rgbcolor={0,0,255}));
    connect(VC3.n, Ground2.p)
      annotation (points=[70,80; 18,80],style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, R1.n)
      annotation (points=[-20,60; -20,50], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground2.p)
      annotation (points=[-20,80; 18,80],style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, VC2.p)
      annotation (points=[30,-30; 30,-40], style(color=3, rgbcolor={0,0,255}));
    connect(VC2.n, Ground1.p) annotation (points=[30,-60; 30,-70; 70,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, VS1.p) annotation (points=[-50,-20; -60,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(VS1.n, VS2.n) annotation (points=[-80,-20; -80,-40], style(color=3,
          rgbcolor={0,0,255}));
    connect(D2.n, VS2.p) annotation (points=[-50,-40; -60,-40], style(color=3,
          rgbcolor={0,0,255}));
    connect(D2.p, D1.p) annotation (points=[-30,-40; -20,-40; -20,-20; -30,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(VS2.n, VS3.n) annotation (points=[-80,-40; -80,-60],          style(
          color=3, rgbcolor={0,0,255}));
    connect(VS3.n, Ground3.p) annotation (points=[-80,-60; -80,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(D3.n, VS3.p) annotation (points=[-50,-60; -60,-60], style(color=3,
          rgbcolor={0,0,255}));
    connect(D3.p, D2.p) annotation (points=[-30,-60; -20,-60; -20,-40; -30,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, C1.p) annotation (points=[-20,30; -20,20; -10,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p, R2.p) annotation (points=[-10,20; -20,20; -20,0; -10,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, D1.p) annotation (points=[-10,0; -20,0; -20,-20; -30,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, R2.n) annotation (points=[10,20; 20,20; 20,0; 10,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n, R2.n) annotation (points=[30,-10; 30,0; 10,0],style(color=3,
          rgbcolor={0,0,255}));
    connect(R3.n, Q1.B) annotation (points=[30,-10; 30,0; 50,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.C, R4.p)
      annotation (points=[70,6; 70,30],  style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, Ground1.p)
      annotation (points=[70,-6; 70,-70],style(color=3, rgbcolor={0,0,255}));
  end test4;

  model test4_II
    Modelica.SIunits.Voltage vp1;
    Modelica.SIunits.Voltage vp2;
    Modelica.SIunits.Voltage vp3;
    annotation (Diagram(Text(
          extent=[-80,98; 80,86],
          string="Using different sources:",
          style(color=42, rgbcolor={127,0,0})), Line(points=[-46,86; 46,86],
            style(color=42, rgbcolor={127,0,0}))),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
3-input-NAND

VP1 1 0 pulse(12 0 0.25 0 0 0.25 0.5)
VP2 2 0 pulse(12 0 0.125 0 0 0.125 0.25)
VP3 3 0 pulse(12 0 0.0625 0 0 0.0625 0.125)

D1 4 1 diode
D2 4 2 diode
D3 4 3 diode

VC1 5 0 12
VC2 7 0 -12
VC3 9 0 12

R1 5 4 15000
R2 4 6 15000
R3 7 6 100000
R4 9 8 2200
Cl 4 6 0.01

Q1 8 6 0 modnpn

.model modnpn NPN
.model diode d is=1.e-6 rs=1

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test4f.png\"> <p>

Although we specified that the rising and falling times of the pulse sources should be zero, that is not what <font color=red><b>PSpice</b></font> is simulating, as shown in the following graph: <p>
<img src=\"../Images/test4g.png\"> <p>

<font color=red><b>PSpice</b></font> clearly employs non-zero rising and falling times, and furthermore, when a rising and a falling flank coincide, the rising flank starts conveniently only after the falling flank ended.  How <font color=red><b>PSpice</b></font> determines that this is what it is supposed to do, is beyond me. <p>

The simulation results (aside from delays caused by the non-zero rising and falling times) look perfect: <p>
<img src=\"../Images/test4h.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> will use true pulse sources when they are being modeled.  At time <b>t = 0.5 s</b>, i.e., at a time when all three sources jump from <b>0V</b> to <b>12V</b>, the circuit experiences convergence problems.  Hence I had to replace the pulse sources by trapezoidal pulses, allowing for rise and fall times of <b>0.001 s</b>: <p>
<img src=\"../Images/test4i.png\"> <p>

Now the simulation runs fine and provides \"correct\" results: <p>
<img src=\"../Images/test4j.png\"> <p>

However since I didn't wait with the rising flanks until the falling flanks had terminated, the output shows a few spikes, just as the real circuit might. <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>,\" McGraw-Hill, p.176.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[60,-90; 80,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[8,60; 28,80]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-90,-90; -70,-70]);
    BondLib.Electrical.Analog.Spice.R R1(R=15e3)
      annotation (extent=[-30,30; -10,50], rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=100e3)
      annotation (extent=[20,-30; 40,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=2200)
      annotation (extent=[60,30; 80,50],   rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC1(V=12)
      annotation (extent=[-30,60; -10,80], rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC2(V=-12)
      annotation (extent=[20,-60; 40,-40], rotation=-90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC3(V=12)
      annotation (extent=[60,60; 80,80],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.01)
      annotation (extent=[-10,10; 10,30],  rotation=0);
    BondLib.Electrical.Analog.Spice.D D1(
      enforceStates=false,
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-10; -30,-30],
                                                                rotation=180);
    BondLib.Electrical.Analog.Spice.D D2(
      enforceStates=false,
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-30; -30,-50],
                                                                rotation=180);
    BondLib.Electrical.Analog.Spice.D D3(
      enforceStates=false,
      RS=1,
      IBV=1.e-3,
      IS=1.e-6,
      EG=1.11)             annotation (extent=[-50,-50; -30,-70],
                                                                rotation=180);
    BondLib.Electrical.Analog.Spice.R R2(R=15e3)
      annotation (extent=[-10,-10; 10,10], rotation=0);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      EMin=-100,
      EMax=40,
      GminDC=1e-12,
      VSUB=12,
      Level=1,
      CJE=5.7e-12)
               annotation (extent=[50,-10; 70,10]);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VP1(
      V=12,
      rising=0.001,
      width=0.249,
      falling=0.001,
      period=0.5) annotation (extent=[-80,-30; -60,-10], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VP2(
      V=12,
      rising=0.001,
      falling=0.001,
      width=0.124,
      period=0.25) annotation (extent=[-80,-50; -60,-30], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VP3(
      V=12,
      rising=0.001,
      falling=0.001,
      width=0.0615,
      period=0.125) annotation (extent=[-80,-70; -60,-50], rotation=180);
  equation
    vp1 = VP1.v/12;
    vp2 = VP2.v/12 + 2;
    vp3 = VP3.v/12 + 4;
    connect(VC3.p,R4. n)
      annotation (points=[70,60; 70,50], style(color=3, rgbcolor={0,0,255}));
    connect(VC3.n,Ground2. p)
      annotation (points=[70,80; 18,80],style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p,R1. n)
      annotation (points=[-20,60; -20,50], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n,Ground2. p)
      annotation (points=[-20,80; 18,80],style(color=3, rgbcolor={0,0,255}));
    connect(R3.p,VC2. p)
      annotation (points=[30,-30; 30,-40], style(color=3, rgbcolor={0,0,255}));
    connect(VC2.n,Ground1. p) annotation (points=[30,-60; 30,-70; 70,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(D2.p,D1. p) annotation (points=[-30,-40; -20,-40; -20,-20; -30,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(D3.p,D2. p) annotation (points=[-30,-60; -20,-60; -20,-40; -30,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p,C1. p) annotation (points=[-20,30; -20,20; -10,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,R2. p) annotation (points=[-10,20; -20,20; -20,0; -10,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,D1. p) annotation (points=[-10,0; -20,0; -20,-20; -30,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,R2. n) annotation (points=[10,20; 20,20; 20,0; 10,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,R2. n) annotation (points=[30,-10; 30,0; 10,0],style(color=3,
          rgbcolor={0,0,255}));
    connect(R3.n,Q1. B) annotation (points=[30,-10; 30,0; 50,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.C,R4. p)
      annotation (points=[70,5; 70,30],  style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E,Ground1. p)
      annotation (points=[70,-5; 70,-70],style(color=3, rgbcolor={0,0,255}));
    connect(VP1.p, D1.n) annotation (points=[-60,-20; -50,-20], style(color=3,
          rgbcolor={0,0,255}));
    connect(VP2.p, D2.n) annotation (points=[-60,-40; -50,-40], style(color=3,
          rgbcolor={0,0,255}));
    connect(VP1.n, VP2.n) annotation (points=[-80,-20; -80,-40], style(color=3,
          rgbcolor={0,0,255}));
    connect(VP3.p, D3.n) annotation (points=[-60,-60; -50,-60], style(color=3,
          rgbcolor={0,0,255}));
    connect(VP2.n, VP3.n) annotation (points=[-80,-40; -80,-60], style(color=3,
          rgbcolor={0,0,255}));
    connect(VP3.n, Ground3.p) annotation (points=[-80,-60; -80,-70], style(
          color=3, rgbcolor={0,0,255}));
  end test4_II;

  model test5

    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=40,
      duration=2,
      offset=-15)
      annotation (extent=[-50,0; -30,20], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the BV parameter of the Spice diode model:"), Line(
            points=[-86,84; 86,84], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Zener diode

V1 1 0 pwl (0 -15 2 25)
D1 0 2 diode
R1 1 2 1

.model diode d bv=10
.TRAN 0.0001 2 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test5a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test5b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test5d.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>There was a problem with the</b></font> <b>stateSelect</b> <font color=blue><b>feature.  I had to set</b></font> <b>enforceStates = false</b> <font color=blue><b>in order to get this simulation to run.</b></font>  <font color=brown><b>(This problem has meanwhile been fixed, but only for</b></font> <b>test5</b><font color=brown><b>, not for</b></font> <b>test5_II</b><font color=brown><b>.)</b></font> <p>

<font color=red><b>Dymola</b></font> <font color=blue><b>chooses strange state variables with</b></font> <b>enforceStates = true</b><font color=blue><b>.  It decides that it requires</b></font> <b>dynamic state selection</b><font color=blue><b>, which is very bad news.  Hence it is better to keep</b></font> <b>enforceStates = false</b> <font color=blue><b>in this circuit.</b></font>  <font color=brown><b>There is evidently still an issue with</b></font> <font color=red><b>Dymola</b></font><font color=brown><b>'s state selection algorithm.</b></font> <p>

<font color=blue><b>There are differences between the simulation results produced by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and those produced by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  These differences may be caused in part by the saturation current,</b></font> <b>IS</b><font color=blue><b>.</b></font>  <font color=red><b>PSpice</b></font> <font color=blue><b>offers an additional parameter,</b></font> <b>ISR</b><font color=blue><b>, the reversed saturation current, that is not currently implemented in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  It needs to be checked, how this parameter is being used in</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=blue><b>The differences may also have been caused by a different interpretation of the reverse breakdown current,</b></font> <b>IBV</b><font color=blue><b>.  It needs to be checked how</b></font><font color=red> <b>PSpice</b></font> <font color=blue><b>uses that parameter in its model.</b></font> <p>

<font color=brown><b>There was originally a problem in the diode model that has been removed in</b></font><font color=red> <b>BondLib 2.1a</b></font><font color=brown><b>.</b></font> <p>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-10,30; 10,50],  rotation=0);
    BondLib.Electrical.Analog.Spice.D D1(
      BV=10,
      IBV=0.1e-3,
      RS=0.1,
      TT=5e-9,
      PB=0.75,
      PHP=0.75,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      IS=1e-14,
      enforceStates=false)
               annotation (extent=[30,20; 50,0], rotation=-90);
  equation
    connect(V1.n, Ground1.p) annotation (points=[-40,0; -40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-10,40; -40,40; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, D1.n) annotation (points=[10,40; 40,40; 40,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
  end test5;

  model test5_II

    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=40,
      duration=2,
      offset=-15)
      annotation (extent=[-50,0; -30,20], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-10,30; 10,50],  rotation=0);
    BondLib.Electrical.Analog.Spice.Z Z1(
      BV=10,
      RS=0.1,
      RB=0.1,
      TT=5e-9,
      PB=0.75,
      PHP=0.75,
      IS=1e-14,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      enforceStates=false)
               annotation (extent=[50,0; 30,20], rotation=90);
  equation
    connect(V1.n,Ground1. p) annotation (points=[-40,0; -40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p,V1. p) annotation (points=[-10,40; -40,40; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    annotation (
      Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the Spice Zener diode model:"), Line(points=[-86,82; 86,
              82], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test5e.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>There is a problem with the</b></font> <b>stateSelect</b> <font color=blue><b>feature.  I had to set</b></font> <b>enforceStates = false</b> <font color=blue><b>in order to get this simulation to run.</b></font> </b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    connect(Z1.p, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Z1.n, R1.n) annotation (points=[40,20; 40,40; 10,40], style(color=3,
          rgbcolor={0,0,255}));
  end test5_II;

  model test5_III

    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=40,
      duration=2,
      offset=-15)
      annotation (extent=[-50,0; -30,20], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-10,30; 10,50],  rotation=0);
    annotation (
      Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the ideal Zener diode model:"), Line(points=[-82,82; 82,
              82], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test5c.png\"> <p>

<font color=blue><b>This works, but is no fun!</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Ideal.IdealZenerDiode Z1(v0=10)
      annotation (extent=[50,0; 30,20], rotation=-90);
  equation
    connect(V1.n,Ground1. p) annotation (points=[-40,0; -40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p,V1. p) annotation (points=[-10,40; -40,40; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Z1.n, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Z1.p, R1.n) annotation (points=[40,20; 40,40; 10,40], style(color=3,
          rgbcolor={0,0,255}));
  end test5_III;

  model test5_IV

    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=40,
      duration=2,
      offset=-15)
      annotation (extent=[-50,0; -30,20], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the BV parameter of the Spice diode model:"), Line(
            points=[-86,84; 86,84], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>There are differences in the electrical behavior with the heatport being externally connected to a thermal capacitor:</b></font> <p>
<img src=\"../Images/test5f.png\"> <p>

<font color=blue><b>The reason is that the device heats up dramatically:</b></font> <p>
<img src=\"../Images/test5g.png\"> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) must fail on this example.  The reason is that the device temperature is now an additional state variable.  Default steady-state initialization requires that the derivative of the temperature be zero, which can only be accomplished if no currents flow through any of the resistors, which is incompatible with the electrical steady state.</b></font> <p>

<font color=blue><b>In order to get the default steady-state initialization to work correctly with the thermal ports connected, we would need to add a loss from the thermal capacitor to the environment, i.e., add a temperature source representing the ambient temperature and a thermal conduction from the thermal capacitor to the temperature source.</b></font> <p>

<font color=blue><b>This would allow the software to compute the steady-state temperature, i.e., the temperature value at which the circuit produces exactly as much heat as is being lost to the environment.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-10,30; 10,50],  rotation=0);
    BondLib.Electrical.Analog.Spice.D D1(
      BV=10,
      IBV=0.1e-3,
      RS=0.1,
      TT=5e-9,
      PB=0.75,
      PHP=0.75,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      IS=1e-14,
      enforceStates=false)
               annotation (extent=[30,20; 50,0], rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1
    annotation (extent=[10,-40; 30,-60]);
  equation
    connect(V1.n, Ground1.p) annotation (points=[-40,0; -40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-10,40; -40,40; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, D1.n) annotation (points=[10,40; 40,40; 40,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(D1.heatPort, ThC1.port) annotation (points=[30,10; 20,10; 20,-40],
        style(color=42, rgbcolor={191,0,0}));
    connect(D1.heatPort, R1.heatPort) annotation (points=[30,10; 0,10; 0,30],
        style(color=42, rgbcolor={191,0,0}));
  end test5_IV;

  model test5_V

    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=40,
      duration=2,
      offset=-15)
      annotation (extent=[-50,0; -30,20], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-40; 10,-20]);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the BV parameter of the Spice diode model:"), Line(
            points=[-86,84; 86,84], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>I now added the thermal losses to the environment.  The electrical behavior now looks as follows:</b></font> <p>
<img src=\"../Images/test5h.png\"> <p>

<font color=blue><b>whereas the thermal behavior assumes the following form:</b></font> <p>
<img src=\"../Images/test5i.png\"> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) will now work.  On the thermal side, it represents the thermal equilibrium between the heating of the devices and the thermal losses to the environment.</b></font> <p>

<font color=blue><b>The electrical behavior remains essentially the same with steady-state initialization:</b></font> <p>
<img src=\"../Images/test5j.png\"> <p>

<font color=blue><b>The thermal behavior starts out from an average equilibrium state, and then approaches the behavior without steady-state initialization:</b></font> <p>
<img src=\"../Images/test5k.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-10,30; 10,50],  rotation=0);
    BondLib.Electrical.Analog.Spice.D D1(
      BV=10,
      IBV=0.1e-3,
      RS=0.1,
      TT=5e-9,
      PB=0.75,
      PHP=0.75,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      IS=1e-14,
      enforceStates=false)
               annotation (extent=[30,20; 50,0], rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1
    annotation (extent=[10,-60; 30,-80]);
    BondLib.Thermal.HeatTransfer.Sources.FixedTemperature Tamb
      annotation (extent=[-80,-60; -60,-40]);
    BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThG1(G=10)
      annotation (extent=[-40,-60; -20,-40]);
  equation
    connect(V1.n, Ground1.p) annotation (points=[-40,0; -40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-10,40; -40,40; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, D1.n) annotation (points=[10,40; 40,40; 40,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p) annotation (points=[40,0; 40,-20; 0,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(D1.heatPort, ThC1.port) annotation (points=[30,10; 20,10; 20,-60],
        style(color=42, rgbcolor={191,0,0}));
    connect(D1.heatPort, R1.heatPort) annotation (points=[30,10; 0,10; 0,30],
        style(color=42, rgbcolor={191,0,0}));
    connect(ThG1.port_a, Tamb.port) annotation (points=[-41,-50; -59,-50],
        style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, ThG1.port_b) annotation (points=[20,-60; 20,-50; -19,-50],
        style(color=42, rgbcolor={191,0,0}));
  end test5_V;

  model test6

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=3)
      annotation (extent=[-40,14; -20,34], rotation=180);
    BondLib.Electrical.Analog.Sources.PulseVoltage VP1(period=0.5, V=3,
      startTime=0.25)
      annotation (extent=[-40,-26; -20,-6],rotation=180);
    annotation (Diagram, experiment(StopTime=2, NumberOfIntervals=5000),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Digital NOT circuit

VP1 1 0 pulse(0 3 0.25 0 0 0.25 0.5)
VC1 2 0 3
Rl 3 0 100Meg

M1 3 1 0 0 MODN
M2 2 2 3 3 MODN

.MODEL MODN NMOS Level=1 RD=1 RS=1
.TRAN 0.0001 2 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test6a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test6b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The circuit fails to simulate using</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>.  The compiler experiences problems during index reduction:</b></font> <p>
<img src=\"../Images/test6c.png\"> <p>

<font color=brown><b>Ulf Nordström reported that this error is caused by the</b></font> <b>PULSE</b> <font color=brown><b>voltage source, which is being modeled in</b></font> <font color=red><b>Dymola</b></font> <font color=brown><b>using discrete signals.  Hence if the source is used in a situation, where the voltage needs to be differentiated, the translation dies with a compile-time error message.  The same is true for</b></font> <b>TABLE</b> <font color=brown><b>voltage sources.</b></font> <p>

<font color=brown><b>In the given model, the</b></font> <b>PULSE</b> <font color=brown><b>voltage source can easily be replaced by a</b></font> <b>TRAP</b> <font color=brown><b>voltage source.  Cf.</b></font> <b>test6_IV</b><font color=brown><b>.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.328.
</ol>
</html>"),
      experimentSetupOutput,
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))));
    BondLib.Electrical.Analog.Spice.R R1(R=1e8)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,-22; 20,2]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,18; 20,42]);
  equation
    connect(VP1.n, Ground1.p)           annotation (points=[-40,-16; -50,-16;
          -50,-40; 20,-40],                   style(color=3, rgbcolor={0,0,255}));
    connect(V1.n, Ground1.p)               annotation (points=[-40,24; -50,24;
          -50,-40; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, VP1.p) annotation (points=[0,-16; -20,-16],   style(color=3,
          rgbcolor={0,0,255}));
    connect(Mn1.B, Mn1.S)
      annotation (points=[20,-10; 20,-16], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Ground1.p)
      annotation (points=[20,-16; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S, Mn1.D)
      annotation (points=[20,24; 20,-4], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, Mn2.S)
      annotation (points=[20,30; 20,24], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, V1.p)
      annotation (points=[0,24; -20,24], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.D) annotation (points=[50,-10; 50,-4; 20,-4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 20,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, V1.p) annotation (points=[20,36; 20,50; -10,50; -10,24; -20,
          24], style(color=3, rgbcolor={0,0,255}));
  end test6;

    model test6_II

    annotation (Diagram, experiment(StopTime=2),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>Same difficulties as in</b></font> <b>test6</b><font color=blue><b>.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.328.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))));
    BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.01)
      annotation (extent=[30,-70; 50,-90]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=3)
        annotation (extent=[-40,14; -20,34], rotation=180);
      BondLib.Electrical.Analog.Sources.PulseVoltage VP1(period=0.5, V=3,
        startTime=0.25)
        annotation (extent=[-40,-26; -20,-6],rotation=180);
      BondLib.Electrical.Analog.Spice.R R1(R=1e8)
        annotation (extent=[40,-30; 60,-10], rotation=-90);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        RD=1,
        RS=1,
        Level=1)                             annotation (extent=[0,-22; 20,2]);
      BondLib.Electrical.Analog.Spice.Mn Mn2(
        RD=1,
        RS=1,
        Level=1)                             annotation (extent=[0,18; 20,42]);
    equation
      connect(VP1.n,Ground1. p)           annotation (points=[-40,-16; -50,-16;
          -50,-40; 20,-40],                     style(color=3, rgbcolor={0,0,255}));
      connect(V1.n,Ground1. p)               annotation (points=[-40,24; -50,24;
          -50,-40; 20,-40],   style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.G,VP1. p) annotation (points=[0,-16; -20,-16],   style(color=3,
            rgbcolor={0,0,255}));
      connect(Mn1.B,Mn1. S)
        annotation (points=[20,-10; 20,-16], style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground1. p)
        annotation (points=[20,-16; 20,-40], style(color=3, rgbcolor={0,0,255}));
      connect(Mn2.S,Mn1. D)
        annotation (points=[20,24; 20,-4], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, Mn2.S)
      annotation (points=[20,30; 20,24], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, V1.p)
      annotation (points=[0,24; -20,24], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.D) annotation (points=[50,-10; 50,-4; 20,-4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 20,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, V1.p) annotation (points=[20,36; 20,50; -10,50; -10,24; -20,
          24], style(color=3, rgbcolor={0,0,255}));
    connect(R1.heatPort, ThC1.port) annotation (points=[40,-20; 40,-70], style(
          color=42, rgbcolor={191,0,0}));
    connect(Mn1.heatPort, R1.heatPort) annotation (points=[10,-22; 10,-30; 40,
          -30; 40,-20], style(color=42, rgbcolor={191,0,0}));
    connect(R1.heatPort, Mn2.heatPort) annotation (points=[40,-20; 40,18; 10,18],
        style(color=42, rgbcolor={191,0,0}));
    end test6_II;

  model test6_III

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=3)
      annotation (extent=[-40,14; -20,34], rotation=180);
    BondLib.Electrical.Analog.Sources.PulseVoltage VP1(period=0.5, V=3,
      startTime=0.25)
      annotation (extent=[-40,-26; -20,-6],rotation=180);
    BondLib.Electrical.Analog.Spice.R R1(R=1e8)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn1
      annotation (extent=[0,-22; 20,2]);
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn2
      annotation (extent=[0,18; 20,42]);
  equation
    connect(VP1.n,Ground1. p)           annotation (points=[-40,-16; -50,-16;
          -50,-40; 20,-40],                   style(color=3, rgbcolor={0,0,255}));
    connect(V1.n,Ground1. p)               annotation (points=[-40,24; -50,24;
          -50,-40; 20,-40], style(color=3, rgbcolor={0,0,255}));
    annotation (
      Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the MOSFETs of the standard library:"), Line(points=[
              -86,82; 86,82], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=2),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Modelica standard library</b></font> simulation results: <p>
<img src=\"../Images/test6d.png\"> <p>

<font color=blue><b>This works, but the models lack the detail (touch and feel) of true</b></font> <font color=red><b>Spice</b></font> <font color=blue><b>models.  Consequently, also the voltage levels are off quite significantly.</b></font> <p>

<font color=blue><b>Comparing the results obtained by the</b></font> <font color=red><b>Modelica standard library</b></font> <font color=blue><b>with those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test6h.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.328.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    connect(Mn1.B, Mn1.S)
      annotation (points=[20,-10; 20,-16], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Ground1.p)
      annotation (points=[20,-16; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, VP1.p) annotation (points=[0,-16; -20,-16],   style(color=3,
          rgbcolor={0,0,255}));
    connect(Mn2.S, Mn1.D)
      annotation (points=[20,24; 20,-4], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, Mn2.S)
      annotation (points=[20,30; 20,24], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p, Mn2.G)
      annotation (points=[-20,24; 0,24], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, V1.p) annotation (points=[20,36; 20,50; -10,50; -10,24; -20,24],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.D) annotation (points=[50,-10; 50,-4; 20,-4], style(color=
           3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 20,-40], style(
          color=3, rgbcolor={0,0,255}));
  end test6_III;

  model test6_IV

    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=3,
      rising=0.01,
      width=0.24,
      falling=0.01,
      period=0.5,
      startTime=0.25)
                  annotation (extent=[-40,-26; -20,-6], rotation=180);
    annotation (
      Diagram(          Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using DASSL integrator:"),                      Line(points=[-84,80;
              84,80],         style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=2, Algorithm="Dassl"),
      experimentSetupOutput,
      Icon(
      Ellipse(extent=[-80,80; 80,-80], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=1,
          rgbfillColor={255,0,0},
          fillPattern=1)),
      Ellipse(extent=[-60,60; 60,-60], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1)),
      Rectangle(extent=[-70,10; 70,-10], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=1,
          rgbfillColor={255,0,0},
          fillPattern=1)),
      Text(
        extent=[-80,80; 80,-80],
        string="!",
        style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1))),
      Documentation(info="<html>
<font color=blue><b>According to Ulf Nordstr&ouml;m, the problem in</b></font> <b>test6</b> <font color=blue><b>has been caused by discrete signals being used as part of the</b></font> <b>pulse</b> <font color=blue><b>source.  When that source signal needs to be differentiated,</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>fails.  Hence I now replaced the</b></font> <b>pulse</b> <font color=blue><b>source by a</b></font> <b>trapezoidal</b> <font color=blue><b>source.</b></font> <p>

<font color=blue><b>Unfortunately, the model still doesn't simulate.  Now, the code dies at run time with the error message:</b></font> <p>
<img src=\"../Images/test6e.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.328.
</ol>
</html>"));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=3)
      annotation (extent=[-40,14; -20,34], rotation=180);
    BondLib.Electrical.Analog.Spice.R R1(R=1e8)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,-22; 20,2]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,18; 20,42]);
  equation
    connect(V1.n,Ground1. p)               annotation (points=[-40,24; -50,24;
          -50,-40; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B,Mn1. S)
      annotation (points=[20,-10; 20,-16], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S,Ground1. p)
      annotation (points=[20,-16; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S,Mn1. D)
      annotation (points=[20,24; 20,-4], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, Mn2.S)
      annotation (points=[20,30; 20,24], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, V1.p)
      annotation (points=[0,24; -20,24], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.D) annotation (points=[50,-10; 50,-4; 20,-4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 20,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, V1.p) annotation (points=[20,36; 20,50; -10,50; -10,24; -20,
          24], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, Mn1.G)
      annotation (points=[-20,-16; 0,-16], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p) annotation (points=[-40,-16; -50,-16; -50,-40; 20,
          -40], style(color=3, rgbcolor={0,0,255}));
  end test6_IV;

  model test6_V

    annotation (
      experiment(StopTime=2, Algorithm="Radau"),
      experimentSetupOutput,
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))),
      Documentation(info="<html>
<font color=blue><b>Since the problem of</b></font> <b>test6_IV</b> <font color=blue><b>was of a numerical nature, I decided to exchange the</b></font> <b>DASSL</b> <font color=blue><b>integrator for</b></font> <b>Radau-IIa</b><font color=blue><b>, and now finally, the simulation worked like a charm:</b></font> <p>
<img src=\"../Images/test6f.png\"> <p>

<font color=blue><b>Comparing the results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>with those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test6g.png\"> <p>

<font color=blue><b>we see that there are slight differences.  However, these are caused by the delay in the jumps (ramps) of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, i.e., the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>results are more correct than the</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>results.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.328.
</ol>
</html>"),
      Diagram(          Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using Radau-IIa integrator:"),                  Line(points=[-90,80;
              90,80],         style(color=42, rgbcolor={127,0,0}))));
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=3,
      rising=0.01,
      width=0.24,
      falling=0.01,
      period=0.5,
      startTime=0.25)
                  annotation (extent=[-40,-26; -20,-6], rotation=180);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=3)
      annotation (extent=[-40,14; -20,34], rotation=180);
    BondLib.Electrical.Analog.Spice.R R1(R=1e8)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,-22; 20,2]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(
      RD=1,
      RS=1,
      Level=1)                             annotation (extent=[0,18; 20,42]);
  equation
    connect(V1.n,Ground1. p)               annotation (points=[-40,24; -50,24;
          -50,-40; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B,Mn1. S)
      annotation (points=[20,-10; 20,-16], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S,Ground1. p)
      annotation (points=[20,-16; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S,Mn1. D)
      annotation (points=[20,24; 20,-4], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, Mn2.S)
      annotation (points=[20,30; 20,24], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, V1.p)
      annotation (points=[0,24; -20,24], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.D) annotation (points=[50,-10; 50,-4; 20,-4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 20,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, V1.p) annotation (points=[20,36; 20,50; -10,50; -10,24; -20,
          24], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, Mn1.G)
      annotation (points=[-20,-16; 0,-16], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p) annotation (points=[-40,-16; -50,-16; -50,-40; 20,
          -40], style(color=3, rgbcolor={0,0,255}));
  end test6_V;

  model test7

    annotation (Diagram(Ellipse(extent=[-61,11; -59,
              9], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})), Ellipse(extent=[9,21; 11,19], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1))),
      experiment,
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Feedback Amplifier

VS1 1 0 sin(0 25 10 0 0)
VC1 3 0 25

R1 2 3 150K
R2 2 0 47K
R3 3 4 10K
R4 3 7 47K
R5 3 8 4.7K
R6 5 6 4.7K
R7 6 0 100
R8 10 0 4.7K
R9 9 6 4.7K
Rl0 11 0 114700
R11 7 0 33K

C1 1 2 0.000005
C2 4 7 0.000005
C3 5 6 0.00005
C4 10 0 0.00005
C5 8 9 0.000005
C6 8 11 0.00001

Q1 4 2 5 modnpn
Q2 8 7 10 modnpn

.model modnpn NPN
.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test7a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test7b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test7c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The circuit had initially difficulties converging in</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>.  I had to use a ramping source for the DC supply.  Then the circuit simulated without any further problems, but the results are not identical to those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  The problem is related to the computation of the initial OP point, which </b></font> <font color=red><b>Bondlib</b></font><font color=blue><b> doesn't do.  There seems to be a slow time constant that superposes a slow damped oscillation to the solution.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test7f.png\"> <p>

<font color=blue><b>However before applying steady-state initialization, I had to remove the ramping from the constant voltage source, since otherwise,</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>would use a value of</b></font> <b>0V</b> <font color=blue><b>as the steady state.  In that case, the initial transient would remain in the model.</b></font>  <font color=red><b>Dymola</b></font> <font color=blue><b> computes more accurately than</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>on this example.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.431.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-40,70; -20,90]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-100; -20,-80]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[0,-50; 20,-30]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-70,-60; -50,-40]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=25, freqHz=10)
      annotation (extent=[-100,-30; -80,-10], rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[-100,-60; -80,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=15e4)
      annotation (extent=[-70,30; -50,50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=5e-6)
      annotation (extent=[-90,0; -70,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=47e3)
      annotation (extent=[-70,-30; -50,-10],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=1e4)
      annotation (extent=[-40,30; -20,50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=5e-6)
      annotation (extent=[-20,10; 0,30],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R4(R=47e3)
      annotation (extent=[0,30; 20,50],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R5(R=4700)
      annotation (extent=[30,30; 50,50],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=4700)
      annotation (extent=[-40,-30; -20,-10],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.C C3(C=5e-5)
      annotation (extent=[-20,-30; 0,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R7(R=100)
      annotation (extent=[-40,-74; -20,-54],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.R R8(R=4700)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C4(C=5e-5)
      annotation (extent=[40,-20; 60,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4700)
      annotation (extent=[60,-30; 80,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.C C5(C=5e-6)
      annotation (extent=[60,0; 80,20],    rotation=90);
    BondLib.Electrical.Analog.Spice.C C6(C=1e-5)
      annotation (extent=[70,20; 90,40],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R10(R=114700)
      annotation (extent=[80,-10; 100,10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R11(R=33e3)
      annotation (extent=[0,-20; 20,0],    rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-50,-2; -30,22]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[20,8; 40,32]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=25)
      annotation (extent=[-20,70; 0,90], rotation=90);
  equation
    connect(VS1.n, Ground5.p)          annotation (points=[-90,-30; -90,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-90,10; -90,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, C1.n) annotation (points=[-60,30; -60,10; -70,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, Ground4.p) annotation (points=[-60,-30; -60,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n) annotation (points=[-60,-10; -60,10; -70,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n, R1.n) annotation (points=[-30,50; -30,60; -60,60; -60,50],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.p, C2.n) annotation (points=[10,30; 10,20; 0,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(R4.n, R5.n) annotation (points=[10,50; 10,60; 40,60; 40,50], style(
          color=3, rgbcolor={0,0,255}));
    connect(C3.p, R6.p) annotation (points=[-10,-30; -30,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(C3.n, R6.n) annotation (points=[-10,-10; -30,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R7.p, Ground2.p) annotation (points=[-30,-74; -30,-80], style(color=
           3, rgbcolor={0,0,255}));
    connect(R7.n, R6.p) annotation (points=[-30,-54; -30,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(R8.p, Ground3.p) annotation (points=[30,-20; 30,-30; 10,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(C4.p, R8.p)
      annotation (points=[50,-20; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, R9.n)
      annotation (points=[70,0; 70,-10], style(color=3, rgbcolor={0,0,255}));
    connect(C5.n, C6.p) annotation (points=[70,20; 70,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(C6.p, R5.p) annotation (points=[70,30; 40,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(C6.n, R10.n) annotation (points=[90,30; 90,10], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R10.p, Ground2.p) annotation (points=[90,-10; 90,-80; -30,-80],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R11.n, C2.n) annotation (points=[10,0; 10,20; 0,20], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R11.p, Ground3.p) annotation (points=[10,-20; 10,-30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.B, C1.n)
      annotation (points=[-50,10; -70,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R6.n)
      annotation (points=[-30,4; -30,-10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R3.p)
      annotation (points=[-30,16; -30,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, C2.p) annotation (points=[-30,16; -30,20; -20,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q2.B, C2.n)
      annotation (points=[20,20; 0,20], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, R5.p)
      annotation (points=[40,26; 40,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.E, R8.n) annotation (points=[40,14; 40,0; 30,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(C4.n, R8.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R7.n) annotation (points=[70,-30; 70,-50; -30,-50; -30,-54],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)
      annotation (points=[-10,90; -30,90], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, R3.n) annotation (points=[-10,70; -10,60; -30,60; -30,50],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, R4.n) annotation (points=[-10,70; -10,60; 10,60; 10,50],
        style(color=3, rgbcolor={0,0,255}));
  end test7;

  model test7_II

    annotation (Diagram(Ellipse(extent=[-61,11; -59,
              9], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})), Ellipse(extent=[9,21; 11,19], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Text(
          extent=[8,92; 98,78],
          style(color=42, rgbcolor={127,0,0}),
          string="With initial conditions"),
        Text(
          extent=[8,82; 98,68],
          style(color=42, rgbcolor={127,0,0}),
          string="on the six capacitors:"),
        Line(points=[10,70; 96,70], style(color=42, rgbcolor={127,0,0}))),
      experiment,
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>By setting the initial voltages across the six capacitances manually to values that are close to their steady-state values, as proposed by Christoph Clauß, the slow transient of problem</b></font> <b>test7</b> <font color=blue><b>can be avoided.  Now the results are almost identical to those produced by</b></font> <font color=red><b>PSpice</b></font></b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test7d.png\"> <p>

<font color=blue><b>Comparing the results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>with those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> more quantitatively:</b></font> <p>
<img src=\"../Images/test7e.png\"> <p>

<font color=blue><b>we notice that they are almost identical.  The differences are of a numerical nature, and it looks to me like the results obtained by</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>are more accurate than those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> Millman, J. and C.C. Halkias (1972), <i>Integrated Electronics</i>, McGraw-Hill, p.431.
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-40,70; -20,90]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-100; -20,-80]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[0,-50; 20,-30]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-70,-60; -50,-40]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=25, freqHz=10)
      annotation (extent=[-100,-30; -80,-10], rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[-100,-60; -80,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=15e4)
      annotation (extent=[-70,30; -50,50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=5e-6, u0=-0.76143)
      annotation (extent=[-90,0; -70,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=47e3)
      annotation (extent=[-70,-30; -50,-10],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=1e4)
      annotation (extent=[-40,30; -20,50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=5e-6, u0=14.88)
      annotation (extent=[-20,10; 0,30],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R4(R=47e3)
      annotation (extent=[0,30; 20,50],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R5(R=4700)
      annotation (extent=[30,30; 50,50],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=4700)
      annotation (extent=[-40,-30; -20,-10],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.C C3(C=5e-5, u0=-0.086)
      annotation (extent=[-20,-30; 0,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R7(R=100)
      annotation (extent=[-40,-74; -20,-54],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.R R8(R=4700)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C4(C=5e-5, u0=-9.1477)
      annotation (extent=[40,-20; 60,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4700)
      annotation (extent=[60,-30; 80,-10], rotation=90);
    BondLib.Electrical.Analog.Spice.C C5(C=5e-6, u0=-15.941)
      annotation (extent=[60,0; 80,20],    rotation=90);
    BondLib.Electrical.Analog.Spice.C C6(C=1e-5, u0=15.9429)
      annotation (extent=[70,20; 90,40],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R10(R=114700)
      annotation (extent=[80,-10; 100,10], rotation=90);
    BondLib.Electrical.Analog.Spice.R R11(R=33e3)
      annotation (extent=[0,-20; 20,0],    rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC1(V=25, rampTime=0.001)
      annotation (extent=[-20,70; 0,90], rotation=-270);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-50,-2; -30,22]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[20,8; 40,32]);
  equation
    connect(VS1.n,Ground5. p)          annotation (points=[-90,-30; -90,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.p,VS1. p) annotation (points=[-90,10; -90,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p,C1. n) annotation (points=[-60,30; -60,10; -70,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p,Ground4. p) annotation (points=[-60,-30; -60,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.n,C1. n) annotation (points=[-60,-10; -60,10; -70,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,R1. n) annotation (points=[-30,50; -30,60; -60,60; -60,50],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.p,C2. n) annotation (points=[10,30; 10,20; 0,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(R4.n,R5. n) annotation (points=[10,50; 10,60; 40,60; 40,50], style(
          color=3, rgbcolor={0,0,255}));
    connect(C3.p,R6. p) annotation (points=[-10,-30; -30,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(C3.n,R6. n) annotation (points=[-10,-10; -30,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R7.p,Ground2. p) annotation (points=[-30,-74; -30,-80], style(color=
           3, rgbcolor={0,0,255}));
    connect(R7.n,R6. p) annotation (points=[-30,-54; -30,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(R8.p,Ground3. p) annotation (points=[30,-20; 30,-30; 10,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(C4.p, R8.p)
      annotation (points=[50,-20; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, R9.n)
      annotation (points=[70,0; 70,-10], style(color=3, rgbcolor={0,0,255}));
    connect(C5.n, C6.p) annotation (points=[70,20; 70,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(C6.p, R5.p) annotation (points=[70,30; 40,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(C6.n, R10.n) annotation (points=[90,30; 90,10], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R10.p,Ground2. p) annotation (points=[90,-10; 90,-80; -30,-80],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R11.n,C2. n) annotation (points=[10,0; 10,20; 0,20], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R11.p,Ground3. p) annotation (points=[10,-20; 10,-30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R3.n,VC1. p) annotation (points=[-30,50; -30,60; -10,60; -10,70],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R4.n,VC1. p) annotation (points=[10,50; 10,60; -10,60; -10,70],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(VC1.n,Ground1. p) annotation (points=[-10,90; -30,90], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R9.p, R6.p) annotation (points=[70,-30; 70,-50; -30,-50; -30,-30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-50,10; -70,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R3.p)
      annotation (points=[-30,16; -30,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, C2.p) annotation (points=[-30,16; -30,20; -20,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R6.n)
      annotation (points=[-30,4; -30,-10], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, C2.n)
      annotation (points=[20,20; 0,20], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.E, R8.n) annotation (points=[40,14; 40,0; 30,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(C4.n, R8.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, R5.p)
      annotation (points=[40,26; 40,30], style(color=3, rgbcolor={0,0,255}));
  end test7_II;

  model test8
    Modelica.SIunits.Resistance Rval;
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-60; -50,-40]);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using an ideal transformer:"), Line(points=[-80,82; 80,82],
            style(color=42, rgbcolor={127,0,0}))),
      experiment,
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Trafo and heating resistor

V1 1 0 sin (0 12 10 0 0)
R1 3 0 0.1

L1 1 3 1
L2 2 0 1
K12 L1 L2 0.8

R2 2 0 1 resi

.model resi R TNOM=26.85
.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

The resistor <b>R2</b> is set to increase its value as a function of temperature. Here are some <font color=red><b>BondLib</b></font> simulation results. <p>

Voltage across and current through the resistor <b>R2</b>: <p>
<img src=\"../Images/test8a.png\"> <p>

The resistive value of resistor <b>R2</b> computed as the quotient of voltage and current: <p>
<img src=\"../Images/test8b.png\"> <p>

Temperature of the device as well as the heat flow entering the thermal storage: <p>
<img src=\"../Images/test8c.png\"> <p>

My version of <font color=red><b>PSpice</b></font> won't simulate this circuit.
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.SineVoltage V1(V=12, freqHz=10)
      annotation (extent=[-70,0; -50,20],  rotation=270);
    BondLib.Electrical.Analog.Ideal.IdealTransformer IdealTransformer1(n=0.8)
      annotation (extent=[0,20; 20,40]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-10,-60; 10,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[70,-60; 90,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=0.1, TR1=0)
      annotation (extent=[-10,-20; 10,0],  rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1, TR1=0.05)
      annotation (extent=[70,0; 90,20],    rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[40,-30; 60,-10], rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[40,-50; 60,-70]);
  equation
    Rval = R2.v/R2.i;
    connect(Ground4.p, IdealTransformer1.n2)
      annotation (points=[20,-40; 20,25], style(color=3, rgbcolor={0,0,255}));
    connect(V1.n, Ground1.p)           annotation (points=[-60,0; -60,-40],  style(
          color=3, rgbcolor={0,0,255}));
    connect(V1.p, IdealTransformer1.p1)           annotation (points=[-60,20;
          -60,35; 0,35], style(color=3, rgbcolor={0,0,255}));
    connect(IdealTransformer1.n1, R1.p) annotation (points=[0,25; 0,0;
          -6.12303e-016,0], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[6.12303e-016,-20; 0,-20; 0,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground3.p)
      annotation (points=[80,0; 80,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, IdealTransformer1.p2) annotation (points=[80,20; 80,35; 20,35],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.heatPort, R2.heatPort) annotation (points=[-10,-10; -10,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
  connect(ThCond1.port_b,ThC1. port) annotation (points=[50,-31; 50,-50],
      style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, R2.heatPort) annotation (points=[50,-9; 50,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
  end test8;

    model test8_II

    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using a real transformer:"), Line(points=[-84,80; 84,80],
            style(color=42, rgbcolor={127,0,0}))),
      experiment,
      experimentSetupOutput,
      Documentation(info="<html>
Voltage across and current through the resistor <b>R2</b>: <p>
<img src=\"../Images/test8d.png\"> <p>

Temperature of the device: <p>
<img src=\"../Images/test8e.png\"> <p>

Heat flow entering the thermal storage: <p>
<img src=\"../Images/test8f.png\"> <p>

The heating resistor heats up much less in this configuration.
</html>"),
      Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
              -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Transformer Transformer1(
      L1=1,
      L2=1,
      M=0.8) annotation (extent=[0,20; 20,40]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-70,-60; -50,-40]);
      BondLib.Electrical.Analog.Sources.SineVoltage V1(V=12, freqHz=10)
        annotation (extent=[-70,0; -50,20],  rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-60; 10,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[70,-60; 90,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Spice.R R1(R=0.1, TR1=0)
        annotation (extent=[-10,-20; 10,0],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R2(R=1, TR1=0.05)
        annotation (extent=[70,0; 90,20],    rotation=-90);
    BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
      annotation (extent=[40,-50; 60,-70]);
    equation
    connect(V1.n, Ground1.p)             annotation (points=[-60,0; -60,-40],  style(
            color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[6.12303e-016,-20; 0,-20; 0,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground3.p)
      annotation (points=[80,0; 80,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.heatPort, R2.heatPort) annotation (points=[-10,-10; -10,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_b,ThC1. port) annotation (points=[50,-31; 50,-50],
        style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, R2.heatPort) annotation (points=[50,-9; 50,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
    connect(V1.p, Transformer1.p1) annotation (points=[-60,20; -60,35; 0,35],
        style(color=3, rgbcolor={0,0,255}));
    connect(Transformer1.n1, R1.p) annotation (points=[0,25; 0,0; -6.12303e-016,
          0], style(color=3, rgbcolor={0,0,255}));
    connect(Transformer1.n2, Ground4.p)
      annotation (points=[20,25; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Transformer1.p2) annotation (points=[80,20; 80,35; 20,35],
        style(color=3, rgbcolor={0,0,255}));
    end test8_II;

  model test8_III

    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Reducing the coupling:"), Line(points=[-80,80; 80,80], style(
              color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=3),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Trafo and heating resistor

V1 1 0 sin (0 12 10 0 0)
R1 3 0 0.1

L1 1 3 1
L2 2 0 1
K12 L1 L2 0.3

R2 2 0 1 resi

.model resi R TNOM=26.85
.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Voltage across and current through the resistor <b>R2</b>: <p>
<img src=\"../Images/test8g.png\"> <p>

Temperature of the device: <p>
<img src=\"../Images/test8h.png\"> <p>

Heat flow entering the thermal storage: <p>
<img src=\"../Images/test8i.png\"> <p>

With less coupling, the heating resistor heats up even less.
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
  BondLib.Electrical.Analog.Basic.Transformer Transformer1(
    L1=1,
    L2=1,
      M=0.3)
           annotation (extent=[0,20; 20,40]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-60; -50,-40]);
    BondLib.Electrical.Analog.Sources.SineVoltage V1(V=12, freqHz=10)
      annotation (extent=[-70,0; -50,20],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-10,-60; 10,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[70,-60; 90,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=0.1, TR1=0)
      annotation (extent=[-10,-20; 10,0],  rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1, TR1=0.05)
      annotation (extent=[70,0; 90,20],    rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[40,-30; 60,-10], rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[40,-50; 60,-70]);
  equation
    connect(V1.n, Ground1.p)           annotation (points=[-60,0; -60,-40],  style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[6.12303e-016,-20; 0,-20; 0,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground3.p)
      annotation (points=[80,0; 80,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.heatPort, R2.heatPort) annotation (points=[-10,-10; -10,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
  connect(ThCond1.port_b,ThC1. port) annotation (points=[50,-31; 50,-50],
      style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, R2.heatPort) annotation (points=[50,-9; 50,10; 70,
          10], style(color=42, rgbcolor={191,0,0}));
    connect(V1.p, Transformer1.p1) annotation (points=[-60,20; -60,35; 0,35],
        style(color=3, rgbcolor={0,0,255}));
    connect(Transformer1.n1, R1.p) annotation (points=[0,25; 0,0; -6.12303e-016,
          0], style(color=3, rgbcolor={0,0,255}));
    connect(Transformer1.n2, Ground4.p)
      annotation (points=[20,25; 20,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Transformer1.p2) annotation (points=[80,20; 80,35; 20,35],
        style(color=3, rgbcolor={0,0,255}));
  end test8_III;

  model test9

    annotation (Diagram,
      experiment(StopTime=0.003),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Inverter final stage

VS1 1 0 sin (0 1.5 1000 0 0)
VC1 3 0 10

R1 10 0 56
R2 2 0 22K
R3 3 2 8K
R4 3 11 50
R5 5 6 0.47
R6 6 7 0.47
R7 4 10 56
R8 9 0 10
R9 8 0 4
C1 1 2 10u
C2 6 8 2.2m
C3 6 9 100n

Q1 4 2 11 modpnp
Q2 3 4 5  modnpn
Q3 0 4 7  modpnp

.model modpnp PNP
.model modnpn NPN
.TRAN 0.0001 0.003 0 0.0000005
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test9a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test9b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test9c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>In</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b>, I used laterally diffused PNP and a vertically diffused NPN transistor, so that the substrates of all transistors could be tied to the ground.  The simulation results are unfortunately not identical to those obtained by </b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  The problem is related to the computation of the initial OP point, which </b></font> <font color=red><b>Bondlib</b></font><font color=blue><b> doesn't do.  There seems to be a slow time constant that superposes a slow damped oscillation to the solution.</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> replaces initially all capacitors by open circuits and all inductors by short circuits to compute a trimmed steady-state solution.  Without calculating a DC OP-point first, we are fighting the transient period, which, in this example, takes much longer than the actual simulation.  Ramping sources help with numerical convergence, but don't eliminate the slow time constants from the solution.</b></font> <p>

<font color=blue><b>This is an example, where the default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) shows a positive effect.</b></font> <p>
<img src=\"../Images/test9i.png\"> <p>

<font color=blue><b>The red curve is without default steady-state initialization, whereas the blue curve is with default steady-state initialization.  The simulation results with default steady-state initialization look quite similar to those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test9j.png\"> <p>

<font color=blue><b>Yet, they are not as close as those that were obtained by manually copying the initial conditions over from</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>to</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>(</b></font><b>test9_II</b><font color=blue>).</b></font> <p>

<font color=blue><b>However, this may be more of a problem of</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>than of</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.</b></font>  <font color=red><b>BondLib</b></font> <font color=blue><b>computes the steady state for all state variables, whereas</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>computes it only for the nodeset of the top-level circuit, ignoring the initial transients on the capacitors that are internal to the transistor models.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-106; -50,-86]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=1.5, freqHz=1000)
      annotation (extent=[-90,0; -70,20], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[80,40; 100,60],rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5)
      annotation (extent=[-60,40; -40,60], rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=56)
      annotation (extent=[-10,-86; 10,-66],rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=22e3)
      annotation (extent=[-50,0; -30,20],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=8e3)
      annotation (extent=[-50,60; -30,80], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=50)
      annotation (extent=[-10,60; 10,80],  rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q1(Level=1)
      annotation (extent=[-20,60; 0,40]);
    BondLib.Electrical.Analog.Spice.R R7(R=56)
      annotation (extent=[-10,-60; 10,-40],rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,34; 30,56]);
    BondLib.Electrical.Analog.Spice.R R5(R=0.47)
      annotation (extent=[20,8; 40,28],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=0.47)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q3(Level=1)
      annotation (extent=[10,-20; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R8(R=10)
      annotation (extent=[40,-70; 60,-50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=2.2e-3)
      annotation (extent=[50,-10; 70,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.C C3(C=1e-7)
      annotation (extent=[40,-40; 60,-20], rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4)
      annotation (extent=[60,-50; 80,-30], rotation=90);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[-80,0; -80,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)              annotation (points=[90,40; 90,-86;
          -60,-86], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-60,50; -80,50; -80,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, Ground1.p) annotation (points=[-6.12303e-016,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n)
      annotation (points=[-40,20; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, R2.p) annotation (points=[-60,-86; -40,-86; -40,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, C1.n)
      annotation (points=[-40,60; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R4.n) annotation (points=[-40,80; -40,90; 6.12303e-016,90;
          6.12303e-016,80], style(color=3, rgbcolor={0,0,255}));
    connect(R7.p, R1.n) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-66;
          6.12303e-016,-66], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-20,50; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R4.p) annotation (points=[0,55; 0,60; -6.12303e-016,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R7.n) annotation (points=[0,45; 0,-40; 6.12303e-016,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Q2.C) annotation (points=[6.12303e-016,80; 6.12303e-016,90;
          30,90; 30,50.5], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, VC1.p) annotation (points=[30,50.5; 30,90; 90,90; 90,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Q2.E)
      annotation (points=[30,28; 30,39.5], style(color=3, rgbcolor={0,0,255}));
    connect(R6.n, R5.p)
      annotation (points=[30,0; 30,8], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.E, R6.p)
      annotation (points=[30,-25; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.C, R1.p) annotation (points=[30,-35; 30,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q3.B, R7.n) annotation (points=[10,-30; 6.12303e-016,-30;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, Q1.C)
      annotation (points=[10,45; 0,45], style(color=3, rgbcolor={0,0,255}));
    connect(R8.p, R1.p) annotation (points=[50,-70; 50,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R6.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, C2.p)
      annotation (points=[50,-20; 50,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, R8.n)
      annotation (points=[50,-40; 50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R9.n)
      annotation (points=[70,0; 70,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R1.p) annotation (points=[70,-50; 70,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
  end test9;

  model test9_II

    annotation (Diagram(Text(
          extent=[-68,106; 70,86],
          style(color=42, rgbcolor={127,0,0}),
          string="With initial conditions on the three capacitors:"), Line(
            points=[-68,92; 70,92], style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=0.003),
      experimentSetupOutput,
      Documentation(info="<html>
By setting the initial voltages across the three capacitances manually to values that are close to their steady-state values, as proposed by Christoph Clauß, the slow transient of problem <b>test9</b> can be avoided.  Now the results are almost identical to those produced by <font color=red><b>PSpice</b></font>: <p>
<img src=\"../Images/test9d.png\"> <p>

<font color=blue><b>Comparing the results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>with those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> more quantitatively:</b></font> <p>
<img src=\"../Images/test9h.png\"> <p>

<font color=blue><b>we notice that they are almost identical.  The differences are of a numerical nature, and it looks to me like the results obtained by</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>are more accurate than those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=blue><b>The similarity of the results is closer than for</b></font> <b>test9</b><font color=blue><b>, because in this experiment, </b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>behaves like</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, in that it also sets initial steady-state values for the capacitors of the top-level model only, ignoring the capacitors that are internal to the transistor models.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-106; -50,-86]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=1.5, freqHz=1000)
      annotation (extent=[-90,0; -70,20], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[80,40; 100,60],rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5, u0=-8.31124)
      annotation (extent=[-60,40; -40,60], rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=56)
      annotation (extent=[-10,-86; 10,-66],rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=22e3)
      annotation (extent=[-50,0; -30,20],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=8e3)
      annotation (extent=[-50,60; -30,80], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=50)
      annotation (extent=[-10,60; 10,80],  rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q1(Level=1)
      annotation (extent=[-20,60; 0,40]);
    BondLib.Electrical.Analog.Spice.R R7(R=56)
      annotation (extent=[-10,-60; 10,-40],rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,34; 30,56]);
    BondLib.Electrical.Analog.Spice.R R5(R=0.47)
      annotation (extent=[20,8; 40,28],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=0.47)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q3(Level=1)
      annotation (extent=[10,-20; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R8(R=10)
      annotation (extent=[40,-70; 60,-50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=2.2e-3, u0=2.14988)
      annotation (extent=[50,-10; 70,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.C C3(C=1e-7, u0=-2.14988)
      annotation (extent=[40,-40; 60,-20], rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4)
      annotation (extent=[60,-50; 80,-30], rotation=90);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[-80,0; -80,-86; -60,
          -86],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)              annotation (points=[90,40; 90,-86;
          -60,-86], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-60,50; -80,50; -80,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, Ground1.p) annotation (points=[-6.12303e-016,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n)
      annotation (points=[-40,20; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, R2.p) annotation (points=[-60,-86; -40,-86; -40,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, C1.n)
      annotation (points=[-40,60; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R4.n) annotation (points=[-40,80; -40,86; 6.12303e-016,86;
          6.12303e-016,80], style(color=3, rgbcolor={0,0,255}));
    connect(R7.p, R1.n) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-66;
          6.12303e-016,-66], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-20,50; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R4.p) annotation (points=[0,55; 0,60; -6.12303e-016,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R7.n) annotation (points=[0,45; 0,-40; 6.12303e-016,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Q2.C) annotation (points=[6.12303e-016,80; 0,84; 0,86; 30,86;
          30,50.5],        style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, VC1.p) annotation (points=[30,50.5; 30,86; 90,86; 90,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Q2.E)
      annotation (points=[30,28; 30,39.5], style(color=3, rgbcolor={0,0,255}));
    connect(R6.n, R5.p)
      annotation (points=[30,0; 30,8], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.E, R6.p)
      annotation (points=[30,-25; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.C, R1.p) annotation (points=[30,-35; 30,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q3.B, R7.n) annotation (points=[10,-30; 6.12303e-016,-30;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, Q1.C)
      annotation (points=[10,45; 0,45], style(color=3, rgbcolor={0,0,255}));
    connect(R8.p, R1.p) annotation (points=[50,-70; 50,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R6.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, C2.p)
      annotation (points=[50,-20; 50,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, R8.n)
      annotation (points=[50,-40; 50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R9.n)
      annotation (points=[70,0; 70,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R1.p) annotation (points=[70,-50; 70,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
  end test9_II;

  model test9_III

    annotation (Diagram,
      experiment(StopTime=0.003),
      experimentSetupOutput,
      Documentation(info="<html>
This is the same problem as that of <b>test9</b>.  However, the heat flow is now also being computed.  Since no temperature dependence was added to any of the components, the electrical results of this simulation are indistinguishable from those of problem <b>test9</b>, but now, the device heats up. <p>

Temperature at the device itself: <p>
<img src=\"../Images/test9e.png\"> <p>

Heat flow into the device: <p>
<img src=\"../Images/test9f.png\"> <p>

Temperature at the package: <p>
<img src=\"../Images/test9g.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-106; -50,-86]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=1.5, freqHz=1000)
      annotation (extent=[-90,0; -70,20], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[80,40; 100,60],rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5, u0=-8.31124)
      annotation (extent=[-60,40; -40,60], rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=56)
      annotation (extent=[-10,-86; 10,-66],rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=22e3)
      annotation (extent=[-50,0; -30,20],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=8e3)
      annotation (extent=[-50,60; -30,80], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=50)
      annotation (extent=[-10,60; 10,80],  rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q1(Level=1)
      annotation (extent=[-20,62; 0,38]);
    BondLib.Electrical.Analog.Spice.R R7(R=56)
      annotation (extent=[-10,-60; 10,-40],rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,32; 30,56]);
    BondLib.Electrical.Analog.Spice.R R5(R=0.47)
      annotation (extent=[20,8; 40,28],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=0.47)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q3(Level=1)
      annotation (extent=[10,-18; 30,-42]);
    BondLib.Electrical.Analog.Spice.R R8(R=10)
      annotation (extent=[40,-70; 60,-50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=2.2e-3, u0=2.14988)
      annotation (extent=[50,-10; 70,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.C C3(C=1e-7, u0=-2.14988)
      annotation (extent=[40,-40; 60,-20], rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4)
      annotation (extent=[60,-50; 80,-30], rotation=90);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[-70,-30; -50,-10],
                                         rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC2(C=1)
    annotation (extent=[-70,-40; -50,-60]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[-30,0; -10,-20]);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[-80,0; -80,-86; -60,
          -86],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)              annotation (points=[90,40; 90,-86;
          -60,-86], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-60,50; -80,50; -80,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, Ground1.p) annotation (points=[-6.12303e-016,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n)
      annotation (points=[-40,20; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, R2.p) annotation (points=[-60,-86; -40,-86; -40,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, C1.n)
      annotation (points=[-40,60; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R4.n) annotation (points=[-40,80; -40,90; 6.12303e-016,90;
          6.12303e-016,80], style(color=3, rgbcolor={0,0,255}));
    connect(R7.p, R1.n) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-66;
          6.12303e-016,-66], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-20,50; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R4.p) annotation (points=[0,56; 0,60; -6.12303e-016,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R7.n) annotation (points=[0,44; 0,-40; 6.12303e-016,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Q2.C) annotation (points=[6.12303e-016,80; 6.12303e-016,90;
          30,90; 30,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, VC1.p) annotation (points=[30,50; 30,90; 90,90; 90,60], style(
          color=3, rgbcolor={0,0,255}));
    connect(R5.n, Q2.E)
      annotation (points=[30,28; 30,38], style(color=3, rgbcolor={0,0,255}));
    connect(R6.n, R5.p)
      annotation (points=[30,0; 30,8], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.E, R6.p)
      annotation (points=[30,-24; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.C, R1.p) annotation (points=[30,-36; 30,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q3.B, R7.n) annotation (points=[10,-30; 6.12303e-016,-30;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R8.p, R1.p) annotation (points=[50,-70; 50,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R6.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, C2.p)
      annotation (points=[50,-20; 50,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, R8.n)
      annotation (points=[50,-40; 50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R9.n)
      annotation (points=[70,0; 70,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R1.p) annotation (points=[70,-50; 70,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.heatPort, Q1.heatPort) annotation (points=[10,70; 10,86; -10,86;
          -10,62], style(color=42, rgbcolor={191,0,0}));
    connect(Q1.heatPort, R3.heatPort) annotation (points=[-10,62; -10,70; -30,
          70], style(color=42, rgbcolor={191,0,0}));
    connect(R3.heatPort, C1.heatPort) annotation (points=[-30,70; -30,40; -50,
          40], style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, C1.heatPort) annotation (points=[-30,10; -30,40; -50,
          40], style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, Q2.heatPort) annotation (points=[-30,10; -30,32; 20,32],
        style(color=42, rgbcolor={191,0,0}));
    connect(Q2.heatPort, R5.heatPort) annotation (points=[20,32; 40,32; 40,18],
        style(color=42, rgbcolor={191,0,0}));
    connect(R5.heatPort, R6.heatPort)
      annotation (points=[40,18; 40,-10], style(color=42, rgbcolor={191,0,0}));
    connect(Q2.heatPort, Q3.heatPort)
      annotation (points=[20,32; 20,-18], style(color=42, rgbcolor={191,0,0}));
    connect(R6.heatPort, C2.heatPort) annotation (points=[40,-10; 60,-10],
        style(color=42, rgbcolor={191,0,0}));
    connect(C2.heatPort, C3.heatPort) annotation (points=[60,-10; 60,-30],
        style(color=42, rgbcolor={191,0,0}));
    connect(C3.heatPort, R8.heatPort) annotation (points=[60,-30; 60,-60],
        style(color=42, rgbcolor={191,0,0}));
    connect(R9.heatPort, C2.heatPort) annotation (points=[80,-40; 80,-20; 60,
          -20; 60,-10], style(color=42, rgbcolor={191,0,0}));
    connect(R7.heatPort, Q3.heatPort) annotation (points=[10,-50; 16,-50; 16,
          -18; 20,-18], style(color=42, rgbcolor={191,0,0}));
    connect(R7.heatPort, R1.heatPort) annotation (points=[10,-50; 10,-76],
        style(color=42, rgbcolor={191,0,0}));
    connect(Q2.B, Q1.C)
      annotation (points=[10,44; 0,44], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.S, Q1.S) annotation (points=[10,38; -26,38; -26,56; -20,56],
        style(color=2, rgbcolor={0,255,0}));
    connect(Q3.S, Q2.S)
      annotation (points=[10,-24; 10,38], style(color=2, rgbcolor={0,255,0}));
    connect(Q3.S, Ground1.p) annotation (points=[10,-24; -14,-24; -14,-80; -60,
          -80; -60,-86], style(color=2, rgbcolor={0,255,0}));
  connect(ThCond1.port_b,ThC2. port) annotation (points=[-60,-31; -60,-40],
      style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, R2.heatPort) annotation (points=[-20,0; -20,10; -30,10],
        style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, ThCond1.port_a) annotation (points=[-30,10; -30,-4;
          -60,-4; -60,-9], style(color=42, rgbcolor={191,0,0}));
  end test9_III;

  model test10

    annotation (Diagram,
      experiment(StopTime=0.003, Algorithm="Radau"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Inverter final stage

VS1 1 0 sin (0 1.5 1000 0 0)
VC1 3 0 10

R1 10 0 56
R2 2 0 22K
R3 3 2 8K
R4 3 11 50
R5 5 6 0.47
R6 6 7 0.47
R7 13 10 56
R8 9 0 10
R9 8 0 4
C1 1 2 10u
C2 6 8 2.2m
C3 6 9 100n

D1 4 12 diode
D2 12 13 diode

Q1 4 2 11 modpnp
Q2 3 4 5 modnpn
Q3 0 13 7 modpnp

.model diode d
.model modpnp PNP
.model modnpn NPN
.TRAN 0.0001 0.003 0 0.0000005
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test10a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test10b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test10e.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Without default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>), the simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>are completely wrong.</b></font> <p>

<font color=blue><b>Default steady-state initialization takes care of the problem:</b></font> <p>
<img src=\"../Images/test10f.png\"> <p>

<font color=blue><b>The simulation makes slow progress when</b></font> <b>DASSL</b> <font color=blue><b>is being used.  Hence I had to switch to the</b></font> <b>Radau-IIa</b> <font color=blue><b>algorithm instead.</b></font> <p>

<font color=blue><b>The circuit fails to simulate using</b></font> <font color=red><b>Bondlib</b></font><font color=blue><b> with</b></font> <b>enforceStates = true</b><font color=blue><b>.  Hence I had to disable Dymola's state select algorithm by setting</b></font> <b>enforceStates = false</b> <font color=blue><b>on the two diodes.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-106; -50,-86]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=1.5, freqHz=1000)
      annotation (extent=[-90,0; -70,20], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[80,40; 100,60],rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5)
      annotation (extent=[-60,40; -40,60], rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=56)
      annotation (extent=[-10,-86; 10,-66],rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=22e3)
      annotation (extent=[-50,0; -30,20],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=8e3)
      annotation (extent=[-50,60; -30,80], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=50)
      annotation (extent=[-10,60; 10,80],  rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q1(Level=1)
      annotation (extent=[-20,60; 0,40]);
    BondLib.Electrical.Analog.Spice.R R7(R=56)
      annotation (extent=[-10,-60; 10,-40],rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,34; 30,56]);
    BondLib.Electrical.Analog.Spice.R R5(R=0.47)
      annotation (extent=[20,8; 40,28],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=0.47)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q3(Level=1)
      annotation (extent=[10,-20; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R8(R=10)
      annotation (extent=[40,-70; 60,-50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=2.2e-3)
      annotation (extent=[50,-10; 70,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.C C3(C=1e-7)
      annotation (extent=[40,-40; 60,-20], rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4)
      annotation (extent=[60,-50; 80,-30], rotation=90);
    BondLib.Electrical.Analog.Spice.D D2(
      EG=1.11,
      RS=0.1,
      CJ=1e-13,
      CJSW=1e-13,
      enforceStates=false) annotation (extent=[-10,-20; 10,0],rotation=-90);
    BondLib.Electrical.Analog.Spice.D D1(
      EG=1.11,
      RS=0.1,
      CJ=1e-13,
      CJSW=1e-13,
      enforceStates=false) annotation (extent=[-10,10; 10,30],rotation=-90);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[-80,0; -80,-86; -60,
          -86],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)              annotation (points=[90,40; 90,-86;
          -60,-86], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-60,50; -80,50; -80,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, Ground1.p) annotation (points=[-6.12303e-016,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n)
      annotation (points=[-40,20; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, R2.p) annotation (points=[-60,-86; -40,-86; -40,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, C1.n)
      annotation (points=[-40,60; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R4.n) annotation (points=[-40,80; -40,90; 6.12303e-016,90;
          6.12303e-016,80], style(color=3, rgbcolor={0,0,255}));
    connect(R7.p, R1.n) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-66;
          6.12303e-016,-66], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-20,50; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R4.p) annotation (points=[0,55; 0,60; -6.12303e-016,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Q2.C) annotation (points=[6.12303e-016,80; 6.12303e-016,90;
          30,90; 30,50.5], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, VC1.p) annotation (points=[30,50.5; 30,90; 90,90; 90,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Q2.E)
      annotation (points=[30,28; 30,39.5], style(color=3, rgbcolor={0,0,255}));
    connect(R6.n, R5.p)
      annotation (points=[30,0; 30,8], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.E, R6.p)
      annotation (points=[30,-25; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.C, R1.p) annotation (points=[30,-35; 30,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q3.B, R7.n) annotation (points=[10,-30; 6.12303e-016,-30;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, Q1.C)
      annotation (points=[10,45; 0,45], style(color=3, rgbcolor={0,0,255}));
    connect(R8.p, R1.p) annotation (points=[50,-70; 50,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R6.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, C2.p)
      annotation (points=[50,-20; 50,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, R8.n)
      annotation (points=[50,-40; 50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R9.n)
      annotation (points=[70,0; 70,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R1.p) annotation (points=[70,-50; 70,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, D1.p) annotation (points=[0,45; 0,30; -6.12303e-016,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, D2.p) annotation (points=[6.12303e-016,10; 6.12303e-016,5;
          -6.12303e-016,5; -6.12303e-016,0], style(color=3, rgbcolor={0,0,255}));
    connect(D2.n, R7.n) annotation (points=[6.12303e-016,-20; 6.12303e-016,-40],
                style(color=3, rgbcolor={0,0,255}));
  end test10;

  model test10_II

    annotation (Diagram,
      experiment(StopTime=0.003, Algorithm="Dassl"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>By manually copying the correct initial voltages of the three capacitors from</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>to</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, decent simulation results can be obtained:</b></font> <p>
<img src=\"../Images/test10c.png\"> <p>

<font color=blue><b>Quantitative comparison of simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test10d.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/gegentakt1</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-106; -50,-86]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=1.5, freqHz=1000)
      annotation (extent=[-90,0; -70,20], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[80,40; 100,60],rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-5, u0=-8.31124)
      annotation (extent=[-60,40; -40,60], rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=56)
      annotation (extent=[-10,-86; 10,-66],rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=22e3)
      annotation (extent=[-50,0; -30,20],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=8e3)
      annotation (extent=[-50,60; -30,80], rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=50)
      annotation (extent=[-10,60; 10,80],  rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q1
      annotation (extent=[-20,60; 0,40]);
    BondLib.Electrical.Analog.Spice.R R7(R=56)
      annotation (extent=[-10,-60; 10,-40],rotation=90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,34; 30,56]);
    BondLib.Electrical.Analog.Spice.R R5(R=0.47)
      annotation (extent=[20,8; 40,28],    rotation=90);
    BondLib.Electrical.Analog.Spice.R R6(R=0.47)
      annotation (extent=[20,-20; 40,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.Qpl Q3
      annotation (extent=[10,-20; 30,-40]);
    BondLib.Electrical.Analog.Spice.R R8(R=10)
      annotation (extent=[40,-70; 60,-50], rotation=90);
    BondLib.Electrical.Analog.Spice.C C2(C=2.2e-3, u0=2.59478)
      annotation (extent=[50,-10; 70,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.C C3(C=1e-7, u0=-2.59478)
      annotation (extent=[40,-40; 60,-20], rotation=90);
    BondLib.Electrical.Analog.Spice.R R9(R=4)
      annotation (extent=[60,-50; 80,-30], rotation=90);
    BondLib.Electrical.Analog.Spice.D D2(
      EG=1.11,
      RS=0.1,
      CJ=1e-13,
      CJSW=1e-13,
      enforceStates=false) annotation (extent=[-10,-20; 10,0],rotation=-90);
    BondLib.Electrical.Analog.Spice.D D1(
      EG=1.11,
      RS=0.1,
      CJ=1e-13,
      CJSW=1e-13,
      enforceStates=false) annotation (extent=[-10,10; 10,30],rotation=-90);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[-80,0; -80,-86; -60,
          -86],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground1.p)              annotation (points=[90,40; 90,-86;
          -60,-86], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, VS1.p) annotation (points=[-60,50; -80,50; -80,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, Ground1.p) annotation (points=[-6.12303e-016,-86; -60,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, C1.n)
      annotation (points=[-40,20; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, R2.p) annotation (points=[-60,-86; -40,-86; -40,0],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, C1.n)
      annotation (points=[-40,60; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R4.n) annotation (points=[-40,80; -40,90; 6.12303e-016,90;
          6.12303e-016,80], style(color=3, rgbcolor={0,0,255}));
    connect(R7.p, R1.n) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-66;
          6.12303e-016,-66], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, C1.n)
      annotation (points=[-20,50; -40,50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R4.p) annotation (points=[0,55; 0,60; -6.12303e-016,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Q2.C) annotation (points=[6.12303e-016,80; 6.12303e-016,90;
          30,90; 30,50.5], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, VC1.p) annotation (points=[30,50.5; 30,90; 90,90; 90,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Q2.E)
      annotation (points=[30,28; 30,39.5], style(color=3, rgbcolor={0,0,255}));
    connect(R6.n, R5.p)
      annotation (points=[30,0; 30,8], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.E, R6.p)
      annotation (points=[30,-25; 30,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Q3.C, R1.p) annotation (points=[30,-35; 30,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q3.B, R7.n) annotation (points=[10,-30; 6.12303e-016,-30;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, Q1.C)
      annotation (points=[10,45; 0,45], style(color=3, rgbcolor={0,0,255}));
    connect(R8.p, R1.p) annotation (points=[50,-70; 50,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R6.n)
      annotation (points=[50,0; 30,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, C2.p)
      annotation (points=[50,-20; 50,0], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, R8.n)
      annotation (points=[50,-40; 50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R9.n)
      annotation (points=[70,0; 70,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R9.p, R1.p) annotation (points=[70,-50; 70,-86; -6.12303e-016,-86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, D1.p) annotation (points=[0,45; 0,30; -6.12303e-016,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, D2.p) annotation (points=[6.12303e-016,10; 6.12303e-016,5;
          -6.12303e-016,5; -6.12303e-016,0], style(color=3, rgbcolor={0,0,255}));
    connect(D2.n, R7.n) annotation (points=[6.12303e-016,-20; 6.12303e-016,-25;
          6.12303e-016,-25; 6.12303e-016,-30; 6.12303e-016,-40; 6.12303e-016,
          -40], style(color=3, rgbcolor={0,0,255}));
  end test10_II;

  model test11

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-60; 20,-40]);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the BV parameter of the Spice diode model:"), Line(
            points=[-86,84; 86,84], style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=2),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Stabilization

V1 1 0 pwl (0 0 2 60)
R1 1 2 3300
D1 0 2 diode
Q1 1 2 3 modnpn
R2 3 0 1000

.model modnpn NPN
.model diode d bv=24
.TRAN 0.0001 2 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test11a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test11b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test11c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The diode model still has some problems.  The default value of the parasitic resistance of the diode, </b></font> <font color=black><b>RS = 0</b></font><font color=blue><b>, does not work in all circuit configurations.  I had to change the value manually to </b></font> <font color=black><b>RS = 0.1 Ohm</b></font><font color=blue><b>.</b></font>  <font color=brown><b>(This problem has been removed in</b></font><font color=red> <b>BondLib 2.1a</b></font><font color=brown><b>.)</b></font> <p>

<font color=blue><b>For this circuit,</b></font> <b>enforceStates = true</b> <font color=blue><b>on the diode makes no difference, because</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>chooses correct state variables.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=60, duration=2)
      annotation (extent=[-70,-10; -50,10],rotation=270);
    BondLib.Electrical.Analog.Spice.Qnv Q1
      annotation (extent=[-2,20; 22,40], rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R1(R=3300)
      annotation (extent=[-30,0; -10,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.D D1(
      BV=24,
      PB=0.75,
      IBV=1e-4,
      PHP=0.75,
      RS=0.1,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9) annotation (extent=[0,-20; 20,0],  rotation=90);
  equation
    connect(V1.n, Ground1.p)           annotation (points=[-60,-10; -60,-40; 10,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p, Q1.C) annotation (points=[-60,10; -60,40; 4,40],  style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[60,-10; 60,-40; 10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, Q1.E) annotation (points=[60,10; 60,40; 16,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, Q1.C) annotation (points=[-30,10; -40,10; -40,40; 4,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n) annotation (points=[10,20; 10,10; -10,10],
                                                                 style(color=3,
          rgbcolor={0,0,255}));
    connect(D1.p, Ground1.p)
      annotation (points=[10,-20; 10,-40], style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, Q1.B)
      annotation (points=[10,0; 10,20], style(color=3, rgbcolor={0,0,255}));
  end test11;

  model test11_II

    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the Spice Zener diode model:"), Line(points=[-86,82; 86,
              82], style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=2),
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test11e.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>For this circuit,</b></font> <b>enforceStates = true</b> <font color=blue><b>on the diode makes no difference, because</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>chooses correct state variable.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-60; 20,-40]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=60, duration=2)
      annotation (extent=[-70,-10; -50,10],rotation=270);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-2,20; 22,40], rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R1(R=3300)
      annotation (extent=[-30,0; -10,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.Z Z1(
      BV=24,
      RS=0.1,
      RB=0.1,
      PB=0.75,
      PHP=0.75,
      CJ=1e-13,
      MJ=0.3333,
      CJSW=1e-13,
      MJSW=0.3333,
      TT=5e-9) annotation (extent=[0,-20; 20,0],  rotation=90);
  equation
    connect(V1.n, Ground1.p)           annotation (points=[-60,-10; -60,-40; 10,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p, Q1.C) annotation (points=[-60,10; -60,40; 4,40],  style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[60,-10; 60,-40; 10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, Q1.E) annotation (points=[60,10; 60,40; 16,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, Q1.C) annotation (points=[-30,10; -40,10; -40,40; 4,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n) annotation (points=[10,20; 10,10; -10,10],
                                                                 style(color=3,
          rgbcolor={0,0,255}));
    connect(Z1.n, Q1.B)
      annotation (points=[10,0; 10,20], style(color=3, rgbcolor={0,0,255}));
    connect(Z1.p, Ground1.p)
      annotation (points=[10,-20; 10,-40], style(color=3, rgbcolor={0,0,255}));
  end test11_II;

  model test11_III

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-60; 20,-40]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=60, duration=2)
      annotation (extent=[-70,-10; -50,10],rotation=270);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-2,20; 22,40], rotation=90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R1(R=3300)
      annotation (extent=[-30,0; -10,20],  rotation=0);
    BondLib.Electrical.Analog.Ideal.IdealZenerDiode Z1(v0=24)
      annotation (extent=[0,-20; 20,0],  rotation=-90);
  equation
    connect(V1.n,Ground1. p)           annotation (points=[-60,-10; -60,-40; 10,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p,Q1. C) annotation (points=[-60,10; -60,40; 4,40],  style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.p,Ground1. p) annotation (points=[60,-10; 60,-40; 10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n,Q1. E) annotation (points=[60,10; 60,40; 16,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p,Q1. C) annotation (points=[-30,10; -40,10; -40,40; 4,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B,R1. n) annotation (points=[10,20; 10,10; -10,10],
                                                                 style(color=3,
          rgbcolor={0,0,255}));
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the ideal Zener diode model:"), Line(points=[-82,82; 82,
              82], style(color=42, rgbcolor={127,0,0}))),
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test11f.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>When using</b></font> <b>DASSL</b> <font color=blue><b>, the simulation got stuck due to chattering.  I had to switch the integrater to</b></font> <b>Radau-IIa</b> <font color=blue><b>in order to get this simulation to run.</b></font> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      experiment(StopTime=2, Algorithm="Radau"),
      experimentSetupOutput);
    connect(Z1.n, Ground1.p)
      annotation (points=[10,-20; 10,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Z1.p, Q1.B)
      annotation (points=[10,0; 10,20], style(color=3, rgbcolor={0,0,255}));
  end test11_III;

  model test11_IV

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-60; 20,-40]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=60, duration=2)
      annotation (extent=[-70,-10; -50,10],rotation=270);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R1(R=3300)
      annotation (extent=[-30,0; -10,20],  rotation=0);
    BondLib.Electrical.Analog.Ideal.IdealZenerDiode Z1(v0=24)
      annotation (extent=[0,-20; 20,0],  rotation=-90);
    annotation (
      Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the simplified NPN model:"), Line(points=[-82,82; 82,82],
            style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=2, Algorithm="Radau"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test11g.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>When using</b></font> <b>DASSL</b> <font color=blue><b>, the simulation ended with a numerical non-convergence message.  I had to switch the integrater to</b></font> <b>Radau-IIa</b> <font color=blue><b>in order to get this simulation to run.</b></font> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Semiconductors.NPN Q1
      annotation (extent=[-2,20; 22,40], rotation=90);
  equation
    connect(V1.n,Ground1. p)           annotation (points=[-60,-10; -60,-40; 10,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,Ground1. p) annotation (points=[60,-10; 60,-40; 10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Z1.n,Ground1. p)
      annotation (points=[10,-20; 10,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, Z1.p)
      annotation (points=[10,20; 10,0], style(color=3, rgbcolor={0,0,255}));
    connect(Z1.p, R1.n) annotation (points=[10,0; 10,10; -10,10],
                                                                style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.C, V1.p) annotation (points=[4,40; -60,40; -60,10],  style(color=
           3, rgbcolor={0,0,255}));
    connect(Q1.E, R2.n) annotation (points=[16,40; 60,40; 60,10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-30,10; -40,10; -40,40; -60,40; -60,
          10], style(color=3, rgbcolor={0,0,255}));
  end test11_IV;

  model test11_V

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-60; 20,-40]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(V=60, duration=2)
      annotation (extent=[-70,-10; -50,10],rotation=270);
    annotation (Diagram(Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using the NPN model of the standard library:"), Line(points=[
              -88,84; 88,84], style(color=42, rgbcolor={127,0,0}))),
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test11d.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>When using</b></font> <b>DASSL</b> <font color=blue><b>, the simulation got stuck due to chattering.  I had to switch the integrater to</b></font> <b>Radau-IIa</b> <font color=blue><b>in order to get this simulation to run.</b></font> <p>

<b>References:</b> <p>

<ol>
<li> <a href=\"http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode\">http://www.softwaredidaktik.de/new2_spicelab/s_u_mod/beispiele/z_diode</a>
</ol>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      experiment(StopTime=2, Algorithm="Radau"),
      experimentSetupOutput);
    Modelica.Electrical.Analog.Semiconductors.NPN Q1
      annotation (extent=[-2,20; 22,40], rotation=90);
    BondLib.Electrical.Analog.Spice.R R1(R=3300)
      annotation (extent=[-30,0; -10,20],  rotation=0);
    BondLib.Electrical.Analog.Ideal.IdealZenerDiode Z1(v0=24)
      annotation (extent=[0,-20; 20,0],  rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=90);
  equation
    connect(V1.n,Ground1. p)           annotation (points=[-60,-10; -60,-40; 10,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p, Q1.C) annotation (points=[-60,10; -60,40; 4,40],  style(color=
           3, rgbcolor={0,0,255}));
    connect(Q1.B, Z1.p) annotation (points=[10,20; 10,0],        style(color=3,
          rgbcolor={0,0,255}));
    connect(Z1.p, R1.n) annotation (points=[10,0; 10,10; -10,10],
                                                                style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-30,10; -40,10; -40,40; -60,40; -60,
          10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R2.n) annotation (points=[16,40; 60,40; 60,10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[60,-10; 60,-40; 10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(Z1.n, Ground1.p)
      annotation (points=[10,-20; 10,-40], style(color=3, rgbcolor={0,0,255}));
  end test11_V;

  model test12

    annotation (Diagram,
      experiment(StopTime=5e-007),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Differential pair

VS1 1 0 sin(0 0.1 5meg)
VC1 8 0 12
VC2 9 0 -12

R1 1 2 1k
R2 7 8 20k
R3 5 8 10k
R4 4 8 10k
R5 3 0 1k

Q1 4 2 6 qnl
Q2 5 3 6 qnl
Q3 7 7 9 qnl
Q4 6 7 9 qnl

.model qnl npn(bf=80 rb=100 ccs=2pf tf=0.3ns tr=6ns cje=3pf cjc=2pf)
.tran 5ns 500ns
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test12a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test12b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test12c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Except for an initial transient caused by a mismatch of initial values of the capacitors internal to the four bipolar transistors, the solutions are acceptably similar.</b></font> <p>

<font color=blue><b>This is another example, where the default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) shows a positive effect.</b></font> <p>
<img src=\"../Images/test12e.png\"> <p>

<font color=blue><b>The red curve is without default steady-state initialization, whereas the blue curve is with default steady-state initialization.  The simulation results with default steady-state initialization look quite similar to those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test12f.png\"> <p>

<font color=blue><b>The remaining differences are actually more of a problem with</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>than with</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>only calculates steady-state initial conditions for the</b></font> <b>nodeset</b><font color=blue><b>, i.e., the node potentials of the top-level circuit, whereas</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>calculates them for all of the state variables, including those internal to the transistors.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=0.1, freqHz=5000000)
      annotation (extent=[-70,-30; -50,-10],
                                           rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-80; -50,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-80; -20,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-90,-80; -70,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[10,-10; 30,10]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[-50,0; -30,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=20e3)
      annotation (extent=[40,40; 60,60],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=10e3)
      annotation (extent=[70,40; 90,60],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=10e3)
      annotation (extent=[-10,40; 10,60],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R5(R=1000)
      annotation (extent=[-40,-50; -20,-30],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC1(V=12, rampTime=0)
      annotation (extent=[-90,30; -70,50], rotation=-90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC2(V=-12, rampTime=0)
      annotation (extent=[10,20; 30,40], rotation=-90);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[-20,-2; 0,22]);
    BondLib.Electrical.Analog.Spice.Qnl Q2(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[-20,-8; 0,-32]);
    BondLib.Electrical.Analog.Spice.Qnl Q3(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[60,8; 40,32]);
    BondLib.Electrical.Analog.Spice.Qnl Q4(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[60,4; 40,-20]);
  equation
    connect(VS1.n, Ground1.p)
      annotation (points=[-60,-30; -60,-60], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VS1.p) annotation (points=[-50,10; -60,10; -60,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.n, R3.n) annotation (points=[50,60; 50,70; 80,70; 80,60], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n, R2.n) annotation (points=[6.12303e-016,60; 6.12303e-016,70;
          50,70; 50,60], style(color=3, rgbcolor={0,0,255}));
    connect(R5.p, Ground2.p) annotation (points=[-30,-50; -30,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(VC1.p, R4.n) annotation (points=[-80,50; -80,70; 6.12303e-016,70;
          6.12303e-016,60], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground3.p) annotation (points=[-80,30; -80,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(VC2.n, Ground4.p)
      annotation (points=[20,20; 20,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R4.p) annotation (points=[0,16; 0,40; -6.12303e-016,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[-20,10; -30,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.E, Q1.E)
      annotation (points=[0,-14; 0,4], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, R5.n) annotation (points=[-20,-20; -30,-20; -30,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p, Q2.C) annotation (points=[80,40; 80,-26; 0,-26], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q3.C, Q3.B) annotation (points=[40,26; 40,34; 60,34; 60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, Q3.B) annotation (points=[50,40; 50,34; 60,34; 60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(VC2.p, Q3.E) annotation (points=[20,40; 20,50; 30,50; 30,6; 40,6;
          40,14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.C, Q2.E)
      annotation (points=[40,-14; 0,-14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.E, Q3.E)
      annotation (points=[40,-2; 40,14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.B, Q3.B) annotation (points=[60,-8; 70,-8; 70,20; 60,20], style(
          color=3, rgbcolor={0,0,255}));
  end test12;

  model test12_II

    annotation (Diagram,
      experiment(StopTime=5e-007),
      experimentSetupOutput,
      Documentation(info="<html>
Since I didn't specify any temperature dependence on the components, the electrical behavior is identical to <b>test12</b>.  The device doesn't have enough time to heat up significantly: <p>
<img src=\"../Images/test12d.png\"> <p>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));

    BondLib.Electrical.Analog.Sources.SineVoltage VS1(V=0.1, freqHz=5000000)
      annotation (extent=[-70,-30; -50,-10],
                                           rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-80; -50,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-80; -20,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-90,-80; -70,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[10,-10; 30,10]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[-50,0; -30,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=20e3)
      annotation (extent=[40,40; 60,60],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R3(R=10e3)
      annotation (extent=[70,40; 90,60],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=10e3)
      annotation (extent=[-10,40; 10,60],  rotation=90);
    BondLib.Electrical.Analog.Spice.R R5(R=1000)
      annotation (extent=[-40,-50; -20,-30],
                                           rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC1(V=12, rampTime=0)
      annotation (extent=[-90,30; -70,50], rotation=-90);
    BondLib.Electrical.Analog.Spice.RampingSources.V VC2(V=-12, rampTime=0)
      annotation (extent=[10,20; 30,40], rotation=-90);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[-20,-2; 0,22]);
    BondLib.Electrical.Analog.Spice.Qnl Q2(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[-20,-8; 0,-32]);
    BondLib.Electrical.Analog.Spice.Qnl Q3(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[60,8; 40,32]);
    BondLib.Electrical.Analog.Spice.Qnl Q4(
      BF=80,
      CJC=2e-12,
      Level=2,
      CJS=2e-12,
      VSUB=12,
      TF=0.3e-9,
      TR=6e-9,
      CJE=3e-12,
      RB=100,
      RC=1,
      RE=1) annotation (extent=[60,4; 40,-20]);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[30,-70; 50,-50], rotation=0);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC2(C=1)
    annotation (extent=[60,-70; 80,-90]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[0,-70; 20,-90]);
  equation
    connect(VS1.n, Ground1.p)
      annotation (points=[-60,-30; -60,-60], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VS1.p) annotation (points=[-50,10; -60,10; -60,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.n, R3.n) annotation (points=[50,60; 50,70; 80,70; 80,60], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n, R2.n) annotation (points=[6.12303e-016,60; 6.12303e-016,70;
          50,70; 50,60], style(color=3, rgbcolor={0,0,255}));
    connect(R5.p, Ground2.p) annotation (points=[-30,-50; -30,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(VC1.p, R4.n) annotation (points=[-80,50; -80,70; 6.12303e-016,70;
          6.12303e-016,60], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground3.p) annotation (points=[-80,30; -80,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(VC2.n, Ground4.p)
      annotation (points=[20,20; 20,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R4.p) annotation (points=[0,16; 0,40; -6.12303e-016,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[-20,10; -30,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.E, Q1.E)
      annotation (points=[0,-14; 0,4], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, R5.n) annotation (points=[-20,-20; -30,-20; -30,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p, Q2.C) annotation (points=[80,40; 80,-26; 0,-26], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q3.C, Q3.B) annotation (points=[40,26; 40,34; 60,34; 60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, Q3.B) annotation (points=[50,40; 50,34; 60,34; 60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(VC2.p, Q3.E) annotation (points=[20,40; 20,50; 30,50; 30,6; 40,6;
          40,14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.C, Q2.E)
      annotation (points=[40,-14; 0,-14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.E, Q3.E)
      annotation (points=[40,-2; 40,14], style(color=3, rgbcolor={0,0,255}));
    connect(Q4.B, Q3.B) annotation (points=[60,-8; 70,-8; 70,20; 60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q1.S, VC1.p) annotation (points=[-20,4; -26,4; -26,50; -80,50],
        style(color=2, rgbcolor={0,255,0}));
    connect(Q2.S, Q1.S) annotation (points=[-20,-14; -26,-14; -26,4; -20,4],
        style(color=2, rgbcolor={0,255,0}));
    connect(Q3.S, Q4.S)
      annotation (points=[60,14; 60,-2], style(color=2, rgbcolor={0,255,0}));
    connect(Q4.S, Q2.S) annotation (points=[60,-2; 74,-2; 74,-34; -14,-34; -14,
          -26; -26,-26; -26,-14; -20,-14], style(color=2, rgbcolor={0,255,0}));
    connect(Q3.heatPort, Q4.heatPort)
      annotation (points=[50,8; 50,4], style(color=42, rgbcolor={191,0,0}));
    connect(Q1.heatPort, Q2.heatPort) annotation (points=[-10,-2; -10,-8],
        style(color=42, rgbcolor={191,0,0}));
    connect(R1.heatPort, Q2.heatPort) annotation (points=[-40,0; -40,-8; -10,-8],
        style(color=42, rgbcolor={191,0,0}));
    connect(R4.heatPort, R2.heatPort) annotation (points=[10,50; 10,80; 60,80;
          60,50], style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, R3.heatPort) annotation (points=[60,50; 60,80; 90,80;
          90,50], style(color=42, rgbcolor={191,0,0}));
    connect(R3.heatPort, Q3.heatPort) annotation (points=[90,50; 90,8; 50,8],
        style(color=42, rgbcolor={191,0,0}));
    connect(R5.heatPort, Q3.heatPort) annotation (points=[-20,-40; 90,-40; 90,8;
          50,8], style(color=42, rgbcolor={191,0,0}));
    connect(R5.heatPort, Q2.heatPort) annotation (points=[-20,-40; -16,-40; -16,
          -8; -10,-8], style(color=42, rgbcolor={191,0,0}));
    connect(ThC2.port, ThCond1.port_b) annotation (points=[70,-70; 70,-60; 51,
          -60], style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, ThCond1.port_a) annotation (points=[10,-70; 10,-60; 29,
          -60], style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, R5.heatPort) annotation (points=[10,-70; 10,-40; -20,-40],
        style(color=42, rgbcolor={191,0,0}));
  end test12_II;

  model test13

    BondLib.Electrical.Analog.Sources.RampCurrent I1(
      duration=60,
      offset=1,
      startTime=0,
      I=-1)        annotation (extent=[-50,0; -30,20],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-50,-40; -30,-20]);
    annotation (Diagram,
      experiment(StopTime=200, Algorithm="Radau"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
LC-Oscillator

I1 1 0 pwl(0 1.0 60 0)
R1 1 2 1
L1 2 0 0.9118906
C1 2 0 1

.tran 1 200
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test13a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test13b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test13c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>After the current ramp ends, the</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>simulation continues to oscillate in an undamped fashion, whereas the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>simulation does not.</b></font> <p>
<img src=\"../Images/test13d.png\"> <p>

<font color=blue><b>This is a numerical artefact.  I get the same behavior in</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>as currently in</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>by increasing the simulation error from</b></font> <b>0.0001</b> <font color=blue><b>(default value of</b></font> <font color=red><b>Dymola</b></font><font color=blue><b>) to</b></font> <b>0.001</b> <font color=blue><b>(default value of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>).</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[10,-40; 30,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-20,30; 0,50],   rotation=0);
    BondLib.Electrical.Analog.Spice.C C1(C=1)
      annotation (extent=[40,0; 60,20],    rotation=270);
    BondLib.Electrical.Analog.Spice.L L1(L=0.9118906, i0=-1)
      annotation (extent=[10,0; 30,20], rotation=-90);
  equation
    connect(Ground1.p, I1.n)
      annotation (points=[-40,-20; -40,0],  style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, I1.p) annotation (points=[-20,40; -40,40; -40,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(C1.n, Ground3.p)
      annotation (points=[50,0; 50,-20], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n) annotation (points=[50,20; 50,40; 0,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(L1.n, Ground2.p)
      annotation (points=[20,0; 20,-20], style(color=3, rgbcolor={0,0,255}));
    connect(L1.p, R1.n) annotation (points=[20,20; 20,40; 0,40], style(color=3,
          rgbcolor={0,0,255}));
  end test13;

  model test14

    annotation (Diagram(
        Ellipse(extent=[19,-14; 21,-16], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[19,37; 21,35], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,76; 1,74], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,36; 1,34], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,-4; 1,-6], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,55; -49,53], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,26; -49,24], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-14; -49,-16], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-25; -49,-27], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-54; -49,-56], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[9,-29; 11,-31], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255}))),
                         experiment(StopTime=1e-006, Algorithm="Dassl"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOSFET DIODE BRIDGE

VC1 1 0 10
VS1 6 0 SIN (1.0 5.0 2MEG 10.0n 0.0)

R1 6 5 10
R2 4 0 100K
L1 3 2 1u
L2 5 0 1u
K1 L1 L2 .9

M1 1 0 2 0   nenh l=1.25u w=50u as=50p ps=50u ad=50p pd=50u
M2 1 0 4 2   nenh l=1.25u w=50u as=50p ps=50u ad=50p pd=50u
M3 1 0 3 0   nenh l=1.25u w=50u as=50p ps=50u ad=50p pd=50u
M4 1 0 4 3   nenh l=1.25u w=50u as=50p ps=50u ad=50p pd=50u

.model nenh nmos
+Level=2 Ld=0.0u Tox=225.000e-10
+Nsub=1.066e+16 Vto=0.622490 Kp=6.326640E-05
+Gamma=.639243 Phi=.31 Uo=1215.74
+Uexp=4.612355e-2 Ucrit=174667 Delta=0.0
+Vmax=177269 Xj=.9u Lambda=0.0
+Nfs=4.55168e+12 Neff=4.68830 Nss=3.000000E+10
+Tpg=1.00000 Rsh=60 Cgso=2.89e-10
+Cgdo=2.89e-10 Cj=3.27e-04 Mj=1.067
+Cjsw=1.74e-10 Mjsw=.195

.plot tran v(1) v(2) v(3) v(4)
.tran 1n 1000n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test14a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test14b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test14d.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>In</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, the simulation using a</b></font> <b>Level=2</b> <font color=blue><b>model makes slow progress.  There are numerical problems probably caused by the missing initialization.  Using the simplified</b></font> <b>Level=4</b> <font color=blue><b>model, the circuit simulates without difficulties.  The initialization difficulties can still be noticed.  There still seem to be numerical issues with the</b></font> <b>level=2</b> <font color=blue><b>MOSFET models that need to be looked at.</b></font> <p>

<font color=blue><b>The simulation results are only qualitatively similar to those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/test14e.png\"> <p>

<font color=blue><b>The primary reason for the discrepancy is that</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>offers a</b></font> <b>non-linear magnetic core model including hysteresis and saturation</b><font color=blue><b>, which</b></font> <font color=red><b>HSpice</b></font> <font color=blue><b>does not.  For this reason, also </b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, based on</b></font> <font color=red><b>HSpice</b></font><font color=blue><b>, offers only a linear approximation of a magnetic core model at the current time.</b></font>

</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[-80,10; -60,30],rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[70,-90; 90,-70]);
    BondLib.Electrical.Analog.Basic.Transformer T1(
      L1=0.000001,
      L2=0.000001,
      M=-0.0000009)
             annotation (extent=[60,18; 40,42]);
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(
      V=5,
      freqHz=2000000,
      offset=1,
      startTime=0.00000001) annotation (extent=[90,-40; 70,-20],
                                                              rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[50,-90; 70,-70]);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      VT0=0.622490,
      KP=6.326640e-05,
      GAMMA=0.639243,
      PHI=0.31,
      LAMBDA=0,
      TOX=225.000e-10,
      NSS=3.0e10,
      NFS=4.55168e12,
      NEFF=4.68830,
      XJ=0.000009,
      LD=0,
      TPG=1,
      U0=1215.74,
      UCRIT=174667,
      UEXP=4.612355e-2,
      VMAX=177269,
      DELTA=0,
      CJ=3.27e-04,
      MJ=0.5,
      CJSW=1.74e-10,
      MJSW=0.3,
      CGD0=2.89e-10,
      CGS0=2.89e-10,
      L=1.25e-6,
      W=50e-6,
      AD=50e-12,
      PD=50e-6,
      AS=50e-12,
      PS=50e-6,
      NSUB=1.566e+16,
      Level=4)                             annotation (extent=[-30,60; -10,80]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(
      VT0=0.622490,
      KP=6.326640e-05,
      GAMMA=0.639243,
      PHI=0.31,
      LAMBDA=0,
      TOX=225.000e-10,
      NSS=3.0e10,
      NFS=4.55168e12,
      NEFF=4.68830,
      XJ=0.000009,
      LD=0,
      TPG=1,
      U0=1215.74,
      UCRIT=174667,
      UEXP=4.612355e-2,
      VMAX=177269,
      DELTA=0,
      CJ=3.27e-04,
      MJ=0.5,
      CJSW=1.74e-10,
      MJSW=0.3,
      CGD0=2.89e-10,
      CGS0=2.89e-10,
      L=1.25e-6,
      W=50e-6,
      AD=50e-12,
      PD=50e-6,
      AS=50e-12,
      PS=50e-6,
      NSUB=1.566e+16,
      Level=4)                             annotation (extent=[-30,20; -10,40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-60,-90; -40,-70]);
    BondLib.Electrical.Analog.Spice.Mn Mn3(
      VT0=0.622490,
      KP=6.326640e-05,
      GAMMA=0.639243,
      PHI=0.31,
      LAMBDA=0,
      TOX=225.000e-10,
      NSS=3.0e10,
      NFS=4.55168e12,
      NEFF=4.68830,
      XJ=0.000009,
      LD=0,
      TPG=1,
      U0=1215.74,
      UCRIT=174667,
      UEXP=4.612355e-2,
      VMAX=177269,
      DELTA=0,
      CJ=3.27e-04,
      MJ=0.5,
      CJSW=1.74e-10,
      MJSW=0.3,
      CGD0=2.89e-10,
      CGS0=2.89e-10,
      L=1.25e-6,
      W=50e-6,
      AD=50e-12,
      PD=50e-6,
      AS=50e-12,
      PS=50e-6,
      NSUB=1.566e+16,
      Level=4)                             annotation (extent=[-30,-20; -10,0]);
    BondLib.Electrical.Analog.Spice.Mn Mn4(
      VT0=0.622490,
      KP=6.326640e-05,
      GAMMA=0.639243,
      PHI=0.31,
      LAMBDA=0,
      TOX=225.000e-10,
      NSS=3.0e10,
      NFS=4.55168e12,
      NEFF=4.68830,
      XJ=0.000009,
      LD=0,
      TPG=1,
      U0=1215.74,
      UCRIT=174667,
      UEXP=4.612355e-2,
      VMAX=177269,
      DELTA=0,
      CJ=3.27e-04,
      MJ=0.5,
      CJSW=1.74e-10,
      MJSW=0.3,
      CGD0=2.89e-10,
      CGS0=2.89e-10,
      L=1.25e-6,
      W=50e-6,
      AD=50e-12,
      PD=50e-6,
      AS=50e-12,
      PS=50e-6,
      NSUB=1.566e+16,
      Level=4)                             annotation (extent=[-30,-60; -10,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-80,-90; -60,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[30,-90; 50,-70]);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[70,0; 90,20],    rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1e5)
      annotation (extent=[30,-60; 50,-40], rotation=-90);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC2(C=1)
    annotation (extent=[70,70; 90,90]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[30,70; 50,90]);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[50,50; 70,70],   rotation=0);
  equation
    connect(VS1.n, Ground1.p)          annotation (points=[80,-40; 80,-70],
                                         style(color=3, rgbcolor={0,0,255}));
    connect(Ground4.p, VC1.n)
      annotation (points=[-70,-70; -70,10],style(color=3, rgbcolor={0,0,255}));
    connect(T1.n1, Ground2.p)           annotation (points=[60,24; 60,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn4.G,Ground3. p) annotation (points=[-30,-55; -50,-55; -50,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn3.G,Ground3. p) annotation (points=[-30,-15; -50,-15; -50,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G,Ground3. p) annotation (points=[-30,25; -50,25; -50,-70],
                                                                          style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn1.G,Ground3. p) annotation (points=[-30,65; -50,65; -50,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.D, VC1.p)              annotation (points=[-10,75; 0,75; 0,90;
          -70,90; -70,30], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.D, VC1.p)              annotation (points=[-10,35; 0,35; 0,90;
          -70,90; -70,30], style(color=3, rgbcolor={0,0,255}));
    connect(Mn3.D, VC1.p)              annotation (points=[-10,-5; 0,-5; 0,90;
          -70,90; -70,30], style(color=3, rgbcolor={0,0,255}));
    connect(Mn4.D, VC1.p)              annotation (points=[-10,-45; 0,-45; 0,90;
          -70,90; -70,30], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B,Ground3. p) annotation (points=[-10,70; -6,70; -6,54; -50,54;
          -50,-70],
                style(color=3, rgbcolor={0,0,255}));
    connect(Mn3.B,Ground3. p) annotation (points=[-10,-10; -6,-10; -6,-26; -50,
          -26; -50,-70],
                    style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.B, T1.p2)           annotation (points=[-10,30; 20,30; 20,36;
          40,36],style(color=3, rgbcolor={0,0,255}));
    connect(Mn4.B, T1.n2)           annotation (points=[-10,-50; 20,-50; 20,24;
          40,24],   style(color=3, rgbcolor={0,0,255}));
    connect(T1.n2, Mn3.S) annotation (points=[40,24; 20,24; 20,-15; -10,-15],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.p2, Mn1.S) annotation (points=[40,36; 20,36; 20,65; -10,65],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, VS1.p) annotation (points=[80,0; 80,-20], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R1.p, T1.p1) annotation (points=[80,20; 80,36; 60,36], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.n, Ground5.p) annotation (points=[40,-60; 40,-70], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.p, Mn4.S) annotation (points=[40,-40; 40,-30; 10,-30; 10,-55;
          -10,-55], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.p, Mn2.S) annotation (points=[40,-40; 40,-30; 10,-30; 10,25; -10,
          25], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Mn1.heatPort, Mn2.heatPort) annotation (points=[-20,60; -40,60; -40,
          20; -20,20], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Mn2.heatPort, Mn3.heatPort) annotation (points=[-20,20; -40,20; -40,
          -20; -20,-20], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Mn3.heatPort, Mn4.heatPort) annotation (points=[-20,-20; -40,-20;
          -40,-60; -20,-60], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.heatPort, Mn4.heatPort) annotation (points=[30,-50; 30,-60; -20,
          -60], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R1.heatPort, R2.heatPort) annotation (points=[70,10; 30,10; 30,-50],
        style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R1.heatPort, ThCond1.port_a) annotation (points=[70,10; 30,10; 30,
          60; 49,60], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(ThCond1.port_a, ThC1.port) annotation (points=[49,60; 40,60; 40,70],
        style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(ThCond1.port_b, ThC2.port) annotation (points=[71,60; 80,60; 80,70],
        style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
  end test14;

  model test14_II

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[70,-90; 90,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[50,-90; 70,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-60,-90; -40,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-80,-90; -60,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[30,-90; 50,-70]);
    annotation (
      Diagram(
        Ellipse(extent=[19,-14; 21,-16], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[19,37; 21,35], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,76; 1,74], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,36; 1,34], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-1,-4; 1,-6], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,55; -49,53], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,26; -49,24], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-14; -49,-16], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-25; -49,-27], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[-51,-54; -49,-56], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
        Ellipse(extent=[9,-29; 11,-31], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
                        Text(
          extent=[-92,104; 92,84],
          style(color=42, rgbcolor={127,0,0}),
          string="Using models of the Modelica standard library:"),
                                                                  Line(points=[-92,88;
              92,88],         style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=1e-006),
      experimentSetupOutput,
      Documentation(info="<html>
Corresponding <font color=red><b>Modelica standard library</b></font> simulation results: <p>
<img src=\"../Images/test14c.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Except for the initial fast transient, the simulation results obtained using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>'s</b></font> <b>level=4</b> <font color=blue><b>MOSFET model and those obtained using the simple</b></font> <b>level=0</b> <font color=blue><b>MOSFET model of the</b></font> <font color=red><b>Modelica standard library</b></font> <font color=blue><b>give identical results:</b></font> <p>
<img src=\"../Images/test14f.png\"> <p>

<font color=blue><b>Hence was the use of the more elaborate</b></font> <b>level=4</b> <font color=blue><b>model an overkill for this application.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn1(
      L=1.25e-6,
      W=50e-6,
      dL=-1.5e-7) annotation (extent=[-30,60; -10,80]);
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn2(
      L=1.25e-6,
      W=50e-6,
      dL=-1.5e-7) annotation (extent=[-30,20; -10,40]);
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn3(
      L=1.25e-6,
      W=50e-6,
      dL=-1.5e-7) annotation (extent=[-30,-20; -10,0]);
    Modelica.Electrical.Analog.Semiconductors.NMOS Mn4(
      L=1.25e-6,
      W=50e-6,
      dL=-1.5e-7) annotation (extent=[-30,-60; -10,-40]);
    Modelica.Electrical.Analog.Basic.Transformer T1(
      L1=0.000001,
      L2=0.000001,
      M=-0.0000009)
             annotation (extent=[40,18; 60,42]);
    Modelica.Electrical.Analog.Basic.Resistor R1(R=10)
      annotation (extent=[70,0; 90,20], rotation=-90);
    Modelica.Electrical.Analog.Basic.Resistor R2(R=1e5)
      annotation (extent=[30,-60; 50,-40], rotation=-90);
    Modelica.Electrical.Analog.Sources.ConstantVoltage VC1(V=10)
      annotation (extent=[-80,10; -60,30], rotation=-90);
    Modelica.Electrical.Analog.Sources.SineVoltage VS1(
      freqHz=2000000,
      offset=1,
      startTime=0.00000001,
      V=5) annotation (extent=[90,-40; 70,-20], rotation=-90);
  equation
    connect(Ground3.p, Mn1.G) annotation (points=[-50,-70; -50,65; -30,65],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Mn1.G) annotation (points=[-10,70; -6,70; -6,54; -50,54; -50,
          65; -30,65], style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, Mn2.G) annotation (points=[-50,-70; -50,25; -30,25],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn3.B, Ground3.p) annotation (points=[-10,-10; -6,-10; -6,-26; -50,
          -26; -50,-70], style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, Mn3.G) annotation (points=[-50,-70; -50,-15; -30,-15],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, Mn4.G) annotation (points=[-50,-70; -50,-55; -30,-55],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.p1, Mn1.S) annotation (points=[40,36; 20,36; 20,65; -10,65],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.p1, Mn2.B) annotation (points=[40,36; 20,36; 20,30; -10,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.n1, Mn3.S) annotation (points=[40,24; 20,24; 20,-15; -10,-15],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.n1, Mn4.B) annotation (points=[40,24; 20,24; 20,-50; -10,-50],
        style(color=3, rgbcolor={0,0,255}));
    connect(T1.n2, Ground2.p)
      annotation (points=[60,24; 60,-70], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, T1.p2) annotation (points=[80,20; 80,36; 60,36], style(color=
            3, rgbcolor={0,0,255}));
    connect(R2.n, Ground5.p)
      annotation (points=[40,-60; 40,-70], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Mn4.S) annotation (points=[40,-40; 40,-30; 10,-30; 10,-55;
          -10,-55], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Mn2.S) annotation (points=[40,-40; 40,-30; 10,-30; 10,25; -10,
          25], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground4.p) annotation (points=[-70,10; -70,-70], style(color=
           3, rgbcolor={0,0,255}));
    connect(VC1.p, Mn1.D) annotation (points=[-70,30; -70,84; 0,84; 0,75; -10,
          75], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, Mn2.D) annotation (points=[-70,30; -70,84; 0,84; 0,35; -10,
          35], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, Mn3.D) annotation (points=[-70,30; -70,84; 0,84; 0,-5; -10,
          -5], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, Mn4.D) annotation (points=[-70,30; -70,84; 0,84; 0,-45; -10,
          -45], style(color=3, rgbcolor={0,0,255}));
    connect(VS1.n, Ground1.p)
      annotation (points=[80,-40; 80,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VS1.p, R1.n)
      annotation (points=[80,-20; 80,0], style(color=3, rgbcolor={0,0,255}));
  end test14_II;

  model test15

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-60; 10,-40]);
    annotation (Diagram(Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using models of the BondLib library:"),         Line(points=[-84,82;
              84,82],         style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=0.0002, Algorithm="Dassl"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Positive feedback Hspice (h92b.01) input deck

E1	3 0 2 1 2000
V1	1 0 dc 2.5 pwl (0 2 0.01m 2 0.03m 3)
R1	3 2 100k
R2	1 4 100k
C1	2 0 .1n
C2	4 0 .1n

.tran 0.0001m 0.2m
.options post
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test15a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test15b.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>In </b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, the simulation dies with an error message:</b></font> <p>
<img src=\"../Images/test15c.png\"> <p>

<font color=blue><b>Default steady-state initialization does not help with this problem.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.VCV VCV1(gain=2000)
      annotation (extent=[-30,4; -50,28]);
    BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,2; 0.01e-3,2;
          0.03e-3,3])
      annotation (extent=[-30,-30; -10,-10],rotation=270);
    BondLib.Electrical.Analog.Spice.R R1(R=1e5)
      annotation (extent=[-50,30; -30,50], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1e5)
      annotation (extent=[-10,0; 10,20],   rotation=0);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1e-9)
      annotation (extent=[40,-30; 60,-10], rotation=270);
    BondLib.Electrical.Analog.Spice.C C2(C=0.1e-9)
      annotation (extent=[10,-30; 30,-10], rotation=270);
  equation
    connect(VT1.n, Ground1.p)           annotation (points=[-20,-30; -20,-40; 0,
          -40],style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VT1.p) annotation (points=[-10,10; -20,10; -20,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, VCV1.n2) annotation (points=[0,-40; -60,-40; -60,10; -50,
          10], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VCV1.p2) annotation (points=[-50,40; -60,40; -60,22; -50,22],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, VCV1.p1) annotation (points=[-30,40; -20,40; -20,22; -30,22],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VCV1.n1)
      annotation (points=[-10,10; -30,10], style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 0,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n) annotation (points=[50,-10; 50,40; -30,40], style(color=
           3, rgbcolor={0,0,255}));
    connect(C2.n, Ground1.p) annotation (points=[20,-30; 20,-40; 0,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C2.p, R2.n) annotation (points=[20,-10; 20,10; 10,10], style(color=
            3, rgbcolor={0,0,255}));
  end test15;

  model test15_II

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-60; 10,-40]);
    Modelica.Electrical.Analog.Basic.VCV VCV1(gain=2000)
      annotation (extent=[-30,4; -50,28]);
    Modelica.Electrical.Analog.Sources.TableVoltage VT1(table=[0,2; 0.01e-3,2;
          0.03e-3,3]) annotation (extent=[-30,-30; -10,-10], rotation=-90);
    Modelica.Electrical.Analog.Basic.Resistor R1(R=1e5)
      annotation (extent=[-50,30; -30,50]);
    Modelica.Electrical.Analog.Basic.Resistor R2(R=1e5)
      annotation (extent=[-10,0; 10,20]);
    Modelica.Electrical.Analog.Basic.Capacitor C1(C=0.1e-9)
      annotation (extent=[40,-30; 60,-10], rotation=-90);
    annotation (
      Diagram(          Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using models of the Modelica standard library:"),
                                                                  Line(points=[-92,84;
              92,84],         style(color=42, rgbcolor={127,0,0}))),
      experiment(StopTime=0.0002),
      experimentSetupOutput,
      Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Using the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>, the simulation dies at exactly the same time as when using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The error message issued is exactly the same also.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))));
    Modelica.Electrical.Analog.Basic.Capacitor C2(C=0.1e-9)
      annotation (extent=[10,-30; 30,-10], rotation=-90);
  equation
    connect(VCV1.n2, Ground1.p) annotation (points=[-50,10; -60,10; -60,-40; 0,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p) annotation (points=[-20,-30; -20,-40; 0,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, VCV1.n1) annotation (points=[-20,-10; -20,10; -30,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, VCV1.p2) annotation (points=[-50,40; -60,40; -60,22; -50,22],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, VCV1.p1) annotation (points=[-30,40; -20,40; -20,22; -30,22],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VCV1.n1)
      annotation (points=[-10,10; -30,10], style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, Ground1.p) annotation (points=[50,-30; 50,-40; 0,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n) annotation (points=[50,-10; 50,40; -30,40], style(color=
           3, rgbcolor={0,0,255}));
    connect(C2.n, Ground1.p) annotation (points=[20,-30; 20,-40; 0,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C2.p, R2.n) annotation (points=[20,-10; 20,10; 10,10], style(color=
            3, rgbcolor={0,0,255}));
  end test15_II;

  model test16

    annotation (experiment(StopTime=40),     Diagram,
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PC-Circuit

R1 1 2 1k
R2 2 0 2k
C1 2 0 0.1
V1 0 1 exp(2 10 10 0.5 20 0.5)

.TRAN 0.01 40
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test16a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test16b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results (with default steady-state initialization): <p>
<img src=\"../Images/test16d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) works correctly on this example.  This is not further surprising, since the circuit is linear.  Newton iteration converges on any linear system in a single step.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.ExponentialsVoltage V1(
      riseTimeConst=0.5,
      fallTimeConst=0.5,
      offset=2,
      startTime=10,
      riseTime=10,
      V=8)         annotation (extent=[-70,-10; -50,10], rotation=90);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-60; 10,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[-40,30; -20,50], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=2000)
      annotation (extent=[-10,-10; 10,10], rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1)
      annotation (extent=[30,-10; 50,10],  rotation=90);
  equation
    connect(V1.p, Ground1.p)                   annotation (points=[-60,-10; -60,
          -40; 0,-40],                                       style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p, V1.n) annotation (points=[-40,40; -60,40; -60,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[-6.12303e-016,-10; 0,-10; 0,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, R1.n) annotation (points=[6.12303e-016,10; 6.12303e-016,40;
          -20,40], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, Ground1.p) annotation (points=[40,-10; 40,-40; 0,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.n, R1.n) annotation (points=[40,10; 40,40; -20,40], style(color=
            3, rgbcolor={0,0,255}));
  end test16;

  model test17

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-80,-60; -60,-40]);
    annotation (Diagram, experiment(StopTime=1e-008),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
RLC circuit

V1  1 0  pulse (0 2 2n 2n 2n 20n 50n)
R1  1  3  1
C1  3  4  0.25
L1  4  2  0.25
C2  1  5  1
R2  5  2  1
R3  2  0  10000
R4  2  6  100
C3  6  0  .01

.TRAN 10u 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test17a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test17b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test17c.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The funny-looking results shown by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> are caused by numerical noise.  They are insignificant.</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> simulates more accurately.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[30,-60; 50,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[60,-60; 80,-40]);
    BondLib.Electrical.Analog.Sources.RampVoltage V1(
      V=2,
      duration=0.000000002,
      offset=0,
      startTime=0.000000002) annotation (extent=[-80,-20; -60,0],   rotation=270);
    BondLib.Electrical.Analog.Spice.R R1(R=1)
      annotation (extent=[-60,30; -40,50], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1)
      annotation (extent=[-20,0; 0,20],    rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1e4)
      annotation (extent=[30,-20; 50,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.R R4(R=100)
      annotation (extent=[60,10; 80,30],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C3(C=0.01)
      annotation (extent=[60,-20; 80,0],   rotation=90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.25)
      annotation (extent=[-30,30; -10,50], rotation=0);
    BondLib.Electrical.Analog.Spice.C C2(C=1)
      annotation (extent=[-50,0; -30,20],  rotation=0);
    BondLib.Electrical.Analog.Spice.L L1(L=0.25)
      annotation (extent=[0,30; 20,50]);
  equation
    connect(V1.n, Ground1.p)           annotation (points=[-70,-20; -70,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-60,40; -70,40; -70,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.p, Ground2.p)
      annotation (points=[40,-20; 40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, R4.p)
      annotation (points=[70,0; 70,10], style(color=3, rgbcolor={0,0,255}));
    connect(C3.p, Ground3.p)
      annotation (points=[70,-20; 70,-40], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n)
      annotation (points=[-30,40; -40,40], style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, R2.p)
      annotation (points=[-30,10; -20,10], style(color=3, rgbcolor={0,0,255}));
    connect(V1.p, C2.p) annotation (points=[-70,0; -70,10; -50,10], style(color=
           3, rgbcolor={0,0,255}));
    connect(L1.p, C1.n)
      annotation (points=[0,40; -10,40], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, L1.n) annotation (points=[0,10; 30,10; 30,40; 20,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(L1.n, R3.n) annotation (points=[20,40; 40,40; 40,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(L1.n, R4.n) annotation (points=[20,40; 70,40; 70,30], style(color=3,
          rgbcolor={0,0,255}));
  end test17;

  model test18

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-40; -50,-20]);
    annotation (Diagram,
      experiment(StopTime=0.3),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Example circuit

V1    1  0  dc 1 sin(0  15  50) AC 1

R1    1  2  0.1
D1    2  3  diode
C1    3  0  0.0022
R2    3  0  100

.model diode d  is=1.e-12 rs=5
.plot  tran v(3) v(1)
.print tran v(3) v(1)
.tran 0.002 0.3 0 0.001
.options nopage opts acct list
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test18a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test18b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test18c.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[10,-40; 30,-20]);
    BondLib.Electrical.Analog.Sources.SineVoltage V1(
      V=15,
      freqHz=50,
      offset=0)
      annotation (extent=[-70,0; -50,20],    rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Spice.R R1(R=0.1)
                                         annotation (extent=[-40,30; -20,50]);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
                                         annotation (extent=[10,0; 30,20],  rotation=270);
    BondLib.Electrical.Analog.Spice.C C1(C=0.0022)
                                         annotation (extent=[40,0; 60,20],  rotation=270);
    BondLib.Electrical.Analog.Spice.D D1(IS=1.e-12, RS=5,
      EG=1.11)                           annotation (extent=[-10,30; 10,50]);
  equation
    connect(V1.n, Ground1.p)           annotation (points=[-60,0; -60,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-40,40; -60,40; -60,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[20,0; 20,-10; 20,-10; 20,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.n, Ground3.p)
      annotation (points=[50,0; 50,-20], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R2.p) annotation (points=[50,20; 50,40; 20,40; 20,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(D1.p, R1.n)
      annotation (points=[-10,40; -20,40], style(color=3, rgbcolor={0,0,255}));
    connect(D1.n, R2.p) annotation (points=[10,40; 20,40; 20,20], style(color=3,
          rgbcolor={0,0,255}));
  end test18;

  model test19

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-80,-80; -60,-60]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=16)
      annotation (extent=[-80,-20; -60,0], rotation=270);
    annotation (Diagram(Ellipse(extent=[-31,31; -29,29], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})), Ellipse(extent=[49,-49; 51,-51], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255}))),
                         experiment(StopTime=1.5e-005),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
COLPITTS OSCILLATOR
*
* Created by RCG Research, Inc. 8/6/92
* This oscillator has a natural frequency of 2.22MHz
*

V1 1 0 DC 16 AC 1 0

R1 1 2 68K
L1 1 3 20M
C1 2 5 0.1U
R2 2 0 8.2K
Q1  3 2 4 QCOL
R3 4 7 100
R4 7 0 820
C3 7 0 1UF
C2 4 0 0.1U
C4 3 0 500P
C5 5 0 5000P
L2 3 5 10U

.MODEL QCOL NPN CJE=.2F CJC=.2F RC=.1 RE=.1
.TRAN 25NS 15US 0 50NS
.PRINT TRAN V(3)
.plot tran v(3)
.OPTION LIMPTS = 180000 ITL5 = 0  acct list

*
* Rspice specific option
* Comment this line for use with other SPICE-like simulators
.OPTION NOINTR

.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test19a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test19b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results with steady-state initialization: <p>

<img src=\"../Images/test19e.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>In</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, the oscillation never starts.  There is nothing in the code that dictates when the oscillation should start.  It starts only due to inaccuracies (noise) in the solution.</b></font>  <font color=red><b>PSpice</b></font> <font color=blue><b>simulates too accurately for the oscillation to ever start.</b></font> <p>

<font color=blue><b>The behavior of</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>(with steady-state initialization) is exactly the same as that of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b> solution is shown below:</b></font> <p>
<img src=\"../Images/test19c.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-80; -20,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-80; 60,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[80,50; 100,70]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[30,40; 50,60]);
    BondLib.Electrical.Analog.Spice.R R1(R=68e3)
                                         annotation (extent=[-60,20; -40,40]);
    BondLib.Electrical.Analog.Spice.R R2(R=8200)
                                         annotation (extent=[-40,-20; -20,0],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=100)
                                         annotation (extent=[60,-10; 80,10],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=820)
                                         annotation (extent=[60,-40; 80,-20],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1e-6)
                                         annotation (extent=[-20,40; 0,60], rotation=0);
    BondLib.Electrical.Analog.Spice.C C2(             C=1e-6)
                                         annotation (extent=[40,-40; 60,-20],
                                                                            rotation=270);
    BondLib.Electrical.Analog.Spice.C C3(C=0.1e-6)
                                         annotation (extent=[20,-20; 40,0], rotation=270);
    BondLib.Electrical.Analog.Spice.C C4(C=5e-10)
                                         annotation (extent=[60,70; 80,90], rotation=0);
    BondLib.Electrical.Analog.Spice.C C5(       C=5e-9)
                                         annotation (extent=[10,50; 30,70], rotation=0);
    BondLib.Electrical.Analog.Spice.L L1(L=0.02)
      annotation (extent=[-60,70; -40,90]);
    BondLib.Electrical.Analog.Spice.L L2(L=1e-5)
      annotation (extent=[-20,60; 0,80]);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      EMin=-100,
      EMax=40,
      GminDC=1e-12,
      Level=1,
      VSUB=16,
      RC=0.1,
      RE=0.1,
      CJC=0.2e-15,
      CJE=0.2e-15)
               annotation (extent=[30,18; 50,42]);
  equation
    connect(V1.n, Ground1.p)               annotation (points=[-70,-20; -70,-60],
                    style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-60,30; -70,30; -70,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[-30,-20; -30,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(R1.n, R2.p) annotation (points=[-40,30; -30,30; -30,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.n, R4.p)
      annotation (points=[70,-10; 70,-20], style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground3.p) annotation (points=[70,-40; 70,-50; 50,-50; 50,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n) annotation (points=[-20,50; -30,50; -30,30; -40,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, Ground3.p)
      annotation (points=[50,-40; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R4.p) annotation (points=[50,-20; 50,-14; 70,-14; 70,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, Ground3.p) annotation (points=[30,-20; 30,-50; 50,-50; 50,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(C4.n, Ground4.p) annotation (points=[80,80; 90,80; 90,70], style(
          color=3, rgbcolor={0,0,255}));
    connect(C5.n, Ground5.p)
      annotation (points=[30,60; 40,60], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, C1.n) annotation (points=[10,60; 6,60; 6,50; 0,50], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, L1.p) annotation (points=[-60,30; -70,30; -70,80; -60,80],
        style(color=3, rgbcolor={0,0,255}));
    connect(L1.n, C4.p)
      annotation (points=[-40,80; 60,80], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, L2.n) annotation (points=[10,60; 6,60; 6,70; 0,70], style(
          color=3, rgbcolor={0,0,255}));
    connect(L2.p, L1.n) annotation (points=[-20,70; -30,70; -30,80; -40,80],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[30,30; -40,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, C4.p) annotation (points=[50,36; 50,80; 60,80], style(color=3,
          rgbcolor={0,0,255}));
    connect(R3.p, Q1.E) annotation (points=[70,10; 70,14; 50,14; 50,24], style(
          color=3, rgbcolor={0,0,255}));
    connect(C3.p, Q1.E) annotation (points=[30,0; 30,14; 50,14; 50,24], style(
          color=3, rgbcolor={0,0,255}));
  end test19;

  model test19_II

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-80,-80; -60,-60]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=16)
      annotation (extent=[-80,-20; -60,0], rotation=270);
    annotation (Diagram(Ellipse(extent=[-31,31; -29,29], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})), Ellipse(extent=[49,-49; 51,-51], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255}))),
                         experiment(StopTime=1.5e-005),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results without steady-state initialization, after manually copying the initial capacitive voltages and inductive currents from the <font color=red><b>PSpice</b></font> nodeset into the <font color=red><b>BondLib</b></font> model: <p>
<img src=\"../Images/test19d.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This time around, the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>solution oscillates, because the initial values weren't set accurately enough on the capacitors and inductors, and because the internal capacitors of the BJT were not initialized.  However, the oscillation looks different from the oscillation computed by</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-40,-80; -20,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-80; 60,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[80,50; 100,70]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[30,40; 50,60]);
    BondLib.Electrical.Analog.Spice.R R1(R=68e3)
                                         annotation (extent=[-60,20; -40,40]);
    BondLib.Electrical.Analog.Spice.R R2(R=8200)
                                         annotation (extent=[-40,-20; -20,0],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=100)
                                         annotation (extent=[60,-10; 80,10],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=820)
                                         annotation (extent=[60,-40; 80,-20],
        rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=0.1e-6, u0=14.3475)
                                         annotation (extent=[-20,40; 0,60], rotation=0);
    BondLib.Electrical.Analog.Spice.C C2(u0=0.784015, C=1e-6)
                                         annotation (extent=[40,-40; 60,-20],
                                                                            rotation=270);
    BondLib.Electrical.Analog.Spice.C C3(C=0.1e-6, u0=-0.879625)
                                         annotation (extent=[20,-20; 40,0], rotation=270);
    BondLib.Electrical.Analog.Spice.C C4(C=5e-10, u0=16)
                                         annotation (extent=[60,70; 80,90], rotation=0);
    BondLib.Electrical.Analog.Spice.C C5(u0=16, C=5e-9)
                                         annotation (extent=[10,50; 30,70], rotation=0);
    BondLib.Electrical.Analog.Spice.L L1(L=0.02, i0=0.0009466)
      annotation (extent=[-60,70; -40,90]);
    BondLib.Electrical.Analog.Spice.L L2(L=1e-5, i0=0)
      annotation (extent=[-20,60; 0,80]);
    BondLib.Electrical.Analog.Spice.Qnl Q1(
      EMin=-100,
      EMax=40,
      GminDC=1e-12,
      Level=1,
      VSUB=16,
      RC=0.1,
      RE=0.1,
      CJC=0.2e-15,
      CJE=0.2e-15)
               annotation (extent=[30,18; 50,42]);
  equation
    connect(V1.n, Ground1.p)               annotation (points=[-70,-20; -70,-60],
                    style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, V1.p) annotation (points=[-60,30; -70,30; -70,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[-30,-20; -30,-60], style(color=
           3, rgbcolor={0,0,255}));
    connect(R1.n, R2.p) annotation (points=[-40,30; -30,30; -30,0], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.n, R4.p)
      annotation (points=[70,-10; 70,-20], style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground3.p) annotation (points=[70,-40; 70,-50; 50,-50; 50,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R1.n) annotation (points=[-20,50; -30,50; -30,30; -40,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.n, Ground3.p)
      annotation (points=[50,-40; 50,-60], style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, R4.p) annotation (points=[50,-20; 50,-14; 70,-14; 70,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(C3.n, Ground3.p) annotation (points=[30,-20; 30,-50; 50,-50; 50,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(C4.n, Ground4.p) annotation (points=[80,80; 90,80; 90,70], style(
          color=3, rgbcolor={0,0,255}));
    connect(C5.n, Ground5.p)
      annotation (points=[30,60; 40,60], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, C1.n) annotation (points=[10,60; 6,60; 6,50; 0,50], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, L1.p) annotation (points=[-60,30; -70,30; -70,80; -60,80],
        style(color=3, rgbcolor={0,0,255}));
    connect(L1.n, C4.p)
      annotation (points=[-40,80; 60,80], style(color=3, rgbcolor={0,0,255}));
    connect(C5.p, L2.n) annotation (points=[10,60; 6,60; 6,70; 0,70], style(
          color=3, rgbcolor={0,0,255}));
    connect(L2.p, L1.n) annotation (points=[-20,70; -30,70; -30,80; -40,80],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[30,30; -40,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, C4.p) annotation (points=[50,36; 50,80; 60,80], style(color=3,
          rgbcolor={0,0,255}));
    connect(R3.p, Q1.E) annotation (points=[70,10; 70,14; 50,14; 50,24], style(
          color=3, rgbcolor={0,0,255}));
    connect(C3.p, Q1.E) annotation (points=[30,0; 30,14; 50,14; 50,24], style(
          color=3, rgbcolor={0,0,255}));
  end test19_II;

  model test20

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-78,-80; -58,-60]);

  model subcircuit

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-26,-76; -6,-56]);
      BondLib.Electrical.Analog.Spice.Mp Mp1(
        VT0=-0.5,
        KP=220e-6,
        TOX=50e-9,
        CGB0=3e-9,
        CGD0=4e-9,
        CGS0=4e-9,
        LAMBDA=0.01,
        L=1e-5,
        W=9e-5,
        Level=3)                     annotation (extent=[-12,20; 8,44]);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        VT0=0.5,
        KP=660e-6,
        TOX=50e-9,
        CGB0=2e-9,
        CGD0=3e-9,
        CGS0=3e-9,
        LAMBDA=0.05,
        L=1e-5,
        W=9e-5,
        Level=3)                     annotation (extent=[-12,-12; 8,12]);
      BondLib.Electrical.Analog.Spice.Interfaces.SPin in1
        annotation (extent=[-102,28; -82,48]);
      annotation (Diagram, experiment(StopTime=5e-008),
        Icon);
      BondLib.Electrical.Analog.Spice.Interfaces.SPin power
        annotation (extent=[14,-92; 34,-72]);
      BondLib.Electrical.Analog.Spice.Interfaces.SPin out1
        annotation (extent=[72,28; 92,48]);
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a
        annotation (extent=[-70,-92; -50,-72]);
  equation
      connect(out1, Mp1.D) annotation (points=[82,38; 8,38],               style(
            color=2, rgbcolor={0,255,0}));
      connect(out1, Mn1.D) annotation (points=[82,38; 50,38; 50,6; 8,6],
          style(color=2, rgbcolor={0,255,0}));
      connect(in1, Mp1.G) annotation (points=[-92,38; -12,38; -12,26], style(
            color=2, rgbcolor={0,255,0}));
      connect(in1, Mn1.G) annotation (points=[-92,38; -50,38; -50,-6; -12,-6],
          style(color=2, rgbcolor={0,255,0}));
      connect(power, Mp1.S) annotation (points=[24,-82; 24,26; 8,26],       style(
            color=2, rgbcolor={0,255,0}));
      connect(power, Mp1.B) annotation (points=[24,-82; 24,32; 8,32],       style(
            color=2, rgbcolor={0,255,0}));
      connect(Ground1.p, Mn1.S) annotation (points=[-16,-56; -16,-30; 12,-30;
            12,-6; 8,-6],      style(color=3, rgbcolor={0,0,255}));
      connect(Ground1.p, Mn1.B) annotation (points=[-16,-56; -10,-56; -10,-40;
            16,-40; 16,0; 8,0],
                          style(color=3, rgbcolor={0,0,255}));
      connect(port_a, port_a) annotation (points=[-60,-82; -60,-82; -60,-82],
          style(color=42, rgbcolor={191,0,0}));
      connect(Mn1.heatPort, port_a) annotation (points=[-2,-12; -40,-12; -40,
            -82; -60,-82], style(color=42, rgbcolor={191,0,0}));
      connect(Mp1.heatPort, port_a) annotation (points=[-2,20; -40,20; -40,-82;
            -60,-82], style(color=42, rgbcolor={191,0,0}));
  end subcircuit;
    BondLib.Electrical.Analog.Sources.RampVoltage RampVoltage1(
      V=5,
      duration=2.5e-9,
      offset=0,
      startTime=0)
      annotation (extent=[-78,-30; -58,-10],
                                           rotation=270);
    annotation (Diagram, experiment(StopTime=6e-008),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
SEVEN-STAGE RING OSCILLATOR
*
* This circuit is a seven-stage CMOS oscillator.
* The natural frequency of the oscillator is 125MHz.
*

* DEFINE SUBCIRCUIT
*
.SUBCKT INV   1      3       2
*           INPUT, OUTPUT, POWER
MP 3 1 2 2 PCHAN L=10U W=90U
MN 3 1 0 0 NCHAN L=10U W=90U
.ENDS INV

* DEFINE MAIN CIRCUIT
*
* VDS 50 0 DC=5 (ramping source required for numerical reasons)
VDS 50 0 PWL 0S 0V 2.5NS 5V
X1  1  2  50 INV
X2  2  3  50 INV
X3  3  4  50 INV
X4  4  5  50 INV
X5  5  6  50 INV
X6  6  7  50 INV
X7  7  1  50 INV

* DEFINE THE MODELS FOR BOTH THE MAIN AND SUBCIRCUIT
*
.MODEL PCHAN PMOS
+(LEVEL=1,VTO=-.5,TOX=50N,KP=220U,LAMBDA=.01,
+CGDO=4NF,CGSO=4NF,CGBO=3NF)
.MODEL NCHAN NMOS
+(LEVEL=1,VTO=.5,TOX=50N,KP=660U,LAMBDA=.05,
+CGDO=3NF,CGSO=3NF,CGBO=2NF)

* DEFINE ANALYSIS
*
.TRAN .1NS 50NS 0 .1NS
*.PRINT TRAN  V(2)
.plot tran v(2)
* MISC.
*
.OPTION ACCT list
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> subcircuit schematic: <p>
<img src=\"../Images/test20a.png\"> <p>

Corresponding <font color=red><b>PSpice</b></font> main circuit schematic: <p>
<img src=\"../Images/test20b.png\"> <p>

<font color=red><b>Spice3g</b></font> simulation results (I didn't get the PSpice circuit to simulate yet): <p>
<img src=\"../Images/test20c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test20d.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> circuit simulates without any difficulties, but it doesn't oscillate.  However, there is nothing in the model that dictates when the oscillation is supposed to start.  It only starts because of inaccuracies in the simulation.  Thus, each program is allowed to start with the oscillation at a different moment in time.  Once the oscillation has started, it is stable.</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>simply simulates more accurately than</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>, and therefore, the simulation never started.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    subcircuit subcircuit1 annotation (extent=[-80,60; -60,80]);
    subcircuit subcircuit2 annotation (extent=[-40,60; -20,80]);
    subcircuit subcircuit3 annotation (extent=[0,60; 20,80]);
    subcircuit subcircuit4 annotation (extent=[40,60; 60,80]);
    subcircuit subcircuit5 annotation (extent=[-40,20; -20,40]);
    subcircuit subcircuit6 annotation (extent=[0,20; 20,40]);
    subcircuit subcircuit7 annotation (extent=[40,20; 60,40]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC2(C=1)
    annotation (extent=[40,-30; 60,-50]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[-20,-30; 0,-50]);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[10,-30; 30,-10], rotation=0);
  equation
    connect(RampVoltage1.n, Ground1.p) annotation (points=[-68,-30; -68,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit1.power) annotation (points=[-68,-10; -68,
          61.8; -67.6,61.8], style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit3.power) annotation (points=[-68,-10; -68,
          54; 12.4,54; 12.4,61.8], style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit4.power) annotation (points=[-68,-10; -68,
          54; 52.4,54; 52.4,61.8], style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit5.power) annotation (points=[-68,-10; -68,
          14; -27.6,14; -27.6,21.8], style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit6.power) annotation (points=[-68,-10; -68,
          14; 12.4,14; 12.4,21.8], style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, subcircuit7.power) annotation (points=[-68,-10; -68,
          14; 52.4,14; 52.4,21.8], style(color=3, rgbcolor={0,0,255}));
    connect(subcircuit1.out1, subcircuit2.in1) annotation (points=[-61.8,73.8;
          -49.9,73.8; -49.9,73.8; -39.2,73.8], style(color=2, rgbcolor={0,255,0}));
    connect(subcircuit2.out1, subcircuit3.in1) annotation (points=[-21.8,73.8;
          -11.9,73.8; -11.9,73.8; 0.8,73.8], style(color=2, rgbcolor={0,255,0}));
    connect(subcircuit3.out1, subcircuit4.in1) annotation (points=[18.2,73.8;
          29.1,73.8; 29.1,73.8; 40.8,73.8], style(color=2, rgbcolor={0,255,0}));
    connect(subcircuit4.out1, subcircuit5.in1) annotation (points=[58.2,73.8;
          74,73.8; 74,50; -46,50; -46,33.8; -39.2,33.8], style(color=2,
          rgbcolor={0,255,0}));
    connect(subcircuit5.out1, subcircuit6.in1) annotation (points=[-21.8,33.8;
          -9.9,33.8; -9.9,33.8; 0.8,33.8], style(color=2, rgbcolor={0,255,0}));
    connect(subcircuit6.out1, subcircuit7.in1) annotation (points=[18.2,33.8;
          40.8,33.8], style(color=2, rgbcolor={0,255,0}));
    connect(subcircuit7.out1, subcircuit1.in1) annotation (points=[58.2,33.8;
          80,33.8; 80,86; -90,86; -90,73.8; -79.2,73.8], style(color=2,
          rgbcolor={0,255,0}));
    connect(subcircuit4.port_a, subcircuit3.port_a) annotation (points=[44,61.8;
          44,58; 4,58; 4,61.8], style(color=42, rgbcolor={191,0,0}));
    connect(subcircuit3.port_a, subcircuit2.port_a) annotation (points=[4,61.8;
          4,58; -36,58; -36,61.8], style(color=42, rgbcolor={191,0,0}));
    connect(subcircuit2.port_a, subcircuit1.port_a) annotation (points=[-36,
          61.8; -36,58; -76,58; -76,61.8], style(color=42, rgbcolor={191,0,0}));
    connect(subcircuit7.port_a, subcircuit6.port_a) annotation (points=[44,21.8;
          44,18; 4,18; 4,21.8], style(color=42, rgbcolor={191,0,0}));
    connect(subcircuit6.port_a, subcircuit5.port_a) annotation (points=[4,21.8;
          4,18; -36,18; -36,21.8], style(color=42, rgbcolor={191,0,0}));
    connect(subcircuit5.port_a, subcircuit1.port_a) annotation (points=[-36,21.8;
          -36,18; -76,18; -76,61.8],       style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, subcircuit6.port_a) annotation (points=[-10,-30; -10,18;
          4,18; 4,21.8], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, ThC1.port) annotation (points=[9,-20; -10,-20; -10,
          -30], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_b, ThC2.port) annotation (points=[31,-20; 50,-20; 50,
          -30], style(color=42, rgbcolor={191,0,0}));
    connect(RampVoltage1.p, subcircuit2.power) annotation (points=[-68,-10; -68,
          54; -27.6,54; -27.6,61.8], style(color=3, rgbcolor={0,0,255}));
  end test20;

  model test21

  model SR

  model NAND

    BondLib.Electrical.Analog.Spice.Interfaces.SPin in1
      annotation (extent=[-82,38; -62,58]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin in2
      annotation (extent=[-82,-22; -62,-2]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin out1
      annotation (extent=[70,8; 90,28]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Spice.Mp Mp1(L=50e-6, W=150e-6)
      annotation (extent=[-26,36; -6,12]);
    BondLib.Electrical.Analog.Spice.Mp Mp2(L=50e-6, W=150e-6)
      annotation (extent=[-26,42; -6,66]);
    BondLib.Electrical.Analog.Spice.Mn Mn1(L=50e-6, W=50e-6)
      annotation (extent=[-26,-42; -6,-66]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(L=50e-6, W=50e-6)
      annotation (extent=[-26,-6; -6,-30]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=5)
      annotation (extent=[10,30; 30,50],   rotation=0);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[40,20; 60,40]);
  equation
    connect(Mp1.G, in2) annotation (points=[-26,30; -50,30; -50,-12; -72,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.D, out1) annotation (points=[-6,60; 80,60; 80,18],
                 style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.G, in1) annotation (points=[-26,48; -72,48],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.S, Mp1.S) annotation (points=[-6,48; -6,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.B, Mp1.S)
      annotation (points=[-6,24; -6,30],  style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.D, out1) annotation (points=[-6,-60; 80,-60; 80,18],
                    style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, in1) annotation (points=[-26,-48; -90,-48; -90,30; -60,30;
              -60,48; -72,48],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Ground1.p) annotation (points=[-6,-54; 20,-54; 20,-12; 50,
              -12; 50,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Mn2.D) annotation (points=[-6,-48; -6,-24],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, in2) annotation (points=[-26,-12; -72,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S, Mn2.B)
      annotation (points=[-6,-12; -6,-18], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S, Ground1.p) annotation (points=[-6,-12; 50,-12; 50,-20],
                   style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.B, Mp2.S) annotation (points=[-6,54; -6,48],   style(color=3,
            rgbcolor={0,0,255}));
        connect(Mp1.D, out1) annotation (points=[-6,18; 80,18], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mp2.S, V1.p) annotation (points=[-6,48; -6,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        connect(V1.n, Ground2.p) annotation (points=[30,40; 50,40], style(color=
               3, rgbcolor={0,0,255}));
  end NAND;
    BondLib.Electrical.Analog.Spice.Interfaces.SPin set1
      annotation (extent=[-84,-4; -64,16]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin reset1
      annotation (extent=[-10,-86; 10,-66]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin q1
      annotation (extent=[64,-4; 84,16]);
    annotation (Diagram);
    NAND NAND1 annotation (extent=[-10,28; 10,48]);
    NAND NAND2 annotation (extent=[-10,-20; 10,0]);
  equation
    connect(set1, NAND1.in1) annotation (points=[-74,6; -60,6; -60,42.8; -7.2,
            42.8],
        style(color=2, rgbcolor={0,255,0}));
    connect(q1, NAND2.in1) annotation (points=[74,6; -32,6; -32,-5.2; -7.2,-5.2],
        style(color=2, rgbcolor={0,255,0}));
      connect(NAND2.out1, NAND1.in2) annotation (points=[8,-8.2; 20,-8.2; 20,20;
            -20,20; -20,36.8; -7.2,36.8], style(color=2, rgbcolor={0,255,0}));
      connect(reset1, NAND2.in2) annotation (points=[0,-76; 0,-30; -20,-30; -20,
            -11.2; -7.2,-11.2], style(color=2, rgbcolor={0,255,0}));
      connect(q1, NAND1.out1) annotation (points=[74,6; 50,6; 50,39.8; 8,39.8],
          style(color=2, rgbcolor={0,255,0}));
  end SR;
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=0.001,
      width=0.25,
      falling=0.001,
      period=0.5,
      offset=0,
      startTime=0) annotation (extent=[-50,-10; -30,10],rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-70; 10,-50]);
    annotation (Diagram(Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using DASSL integrator:"),                      Line(points=[-84,80;
              84,80],         style(color=42, rgbcolor={127,0,0}))),
      experiment,
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
FLIP-FLOP TEST

* * * * * * * * * * * * * * * * * * * * * * * * *
* Created by: RCG Research Incorporated
* July 16, 1990
* * * * * * * * * * * * * * * * * * * * * * * * *

* SUBCKT NAND
* 1: INPUT1
* 2: INPUT2
* 3: OUTPUT
.SUBCKT NAND 1 2 3
VDD 4 0 DC 5
M1 3 2 4 4 PCHAN L=50U W=150U
M2 3 1 4 4 PCHAN L=50U W=150U
M3 3 1 5 0 NCHAN L=50U W=50U
M4 5 2 0 0 NCHAN L=50U W=50U
.MODEL PCHAN PMOS
.MODEL NCHAN NMOS
.ENDS NAND
* SUBCKT SR
* 1: SET
* 2: RESET
* 3: Q
.SUBCKT SR 1 2 3
X1 1 4 3 NAND
X2 3 2 4 NAND
.ENDS SR
V1 1 0 PULSE 0 5 0 1M 1M .25S .5S
V2 2 0 PULSE 0 5 0 1M 1M .5S  1S
R1 3 0 1000G
X1 1 2 3 SR
.TRAN .1S 1S
.OPTIONS NOPAGE ACCT NOINTR ITL4=40 list
.END
</pre> <p>

<hr> <p>

<font color=blue><b>Since I couldn't get subcircuits to work in my version of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> yet, I only show the simulation results obtained with</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>Spice3g</b></font> simulation results: <p>
<img src=\"../Images/test21a.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test21b.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This is a bad circuit.  It represents an</b></font> <b>RS-latch</b> <font color=blue><b>consisting of two</b></font> <b>nand</b> <font color=blue><b>gates.  When the</b></font> <b>set</b> <font color=blue><b>input of the latch goes high, the output goes high.  If the</b></font> <b>reset</b> <font color=blue><b>input goes high, the output goes low.  In the</b></font> <b>RS-latch</b><font color=blue><b>, it should never happen that both the</b></font> <b>set</b> <font color=blue><b>and</b></font> <b>reset</b> <font color=blue><b>inputs go high simultaneously, as the result in that case is logically undefined.  What happens in this situation depends on the implementation.</b></font> <p>

<font color=blue><b>The way the experiment is set up, bad things happen between in the interval</b></font> <b>t = [0,0.25]</b><font color=blue><b>, when both</b></font> <b>set</b> <font color=blue><b>and</b></font> <b>reset</b> <font color=blue><b>are high, and then again at time</b></font> <b>t = 0.5</b><font color=blue><b>, when</b></font> <b>set</b> <font color=blue><b>goes up while</b></font> <b>reset</b> <font color=blue><b>comes down, since there the results will depend on which happens first.</b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> simulation shows a different result in the interval</b></font> <b>t = [0,0.25]</b><font color=blue><b>, which is fine, but then dies at time</b></font> <b>t = 0.5</b><font color=blue><b> with the error message:</b></font> <p>
<img src=\"../Images/test21c.png\"> <p>

<font color=blue><b>This is a numerical problem having to do once again with mixed signal simulations, which are problematic.  The circuit fails to converge across the big jump of the output signal.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=5,
      rising=0.001,
      falling=0.001,
      offset=0,
      startTime=0,
      width=0.5,
      period=1)    annotation (extent=[-10,-10; 10,10], rotation=270);
    SR SR1 annotation (extent=[-10,40; 10,60]);
    BondLib.Electrical.Analog.Spice.R R1(R=1e12)
      annotation (extent=[30,-10; 50,10],  rotation=-90);
  equation
    connect(VT1.n, Ground1.p)
      annotation (points=[-40,-10; -40,-50; 0,-50],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n, Ground1.p)               annotation (points=[-1.83691e-015,
          -10; -1.83691e-015,-30; 0,-30; 0,-50],
                    style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, SR1.set1)               annotation (points=[-40,10; -40,50.6;
          -7.4,50.6],  style(color=3, rgbcolor={0,0,255}));
    connect(VT2.p, SR1.reset1)               annotation (points=[1.83691e-015,
          10; 1.83691e-015,26.2; 0,26.2; 0,42.4],
                                     style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, SR1.q1) annotation (points=[40,10; 40,50.6; 7.4,50.6], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[40,-10; 40,-50; 0,-50], style(
          color=3, rgbcolor={0,0,255}));
  end test21;

  model test21_II

  model SR

  model NAND

    BondLib.Electrical.Analog.Spice.Interfaces.SPin in1
      annotation (extent=[-82,38; -62,58]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin in2
      annotation (extent=[-82,-22; -62,-2]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin out1
      annotation (extent=[70,8; 90,28]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Spice.Mp Mp1(L=50e-6, W=150e-6)
      annotation (extent=[-26,36; -6,12]);
    BondLib.Electrical.Analog.Spice.Mp Mp2(L=50e-6, W=150e-6)
      annotation (extent=[-26,42; -6,66]);
    BondLib.Electrical.Analog.Spice.Mn Mn1(L=50e-6, W=50e-6)
      annotation (extent=[-26,-42; -6,-66]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Spice.Mn Mn2(L=50e-6, W=50e-6)
      annotation (extent=[-26,-6; -6,-30]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage V1(V=5)
      annotation (extent=[10,30; 30,50],   rotation=0);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[40,20; 60,40]);
  equation
    connect(Mp1.G, in2) annotation (points=[-26,30; -50,30; -50,-12; -72,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.D, out1) annotation (points=[-6,60; 80,60; 80,18],
                 style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.G, in1) annotation (points=[-26,48; -72,48],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.S, Mp1.S) annotation (points=[-6,48; -6,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.B, Mp1.S)
      annotation (points=[-6,24; -6,30],  style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.D, out1) annotation (points=[-6,-60; 80,-60; 80,18],
                    style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, in1) annotation (points=[-26,-48; -90,-48; -90,30; -60,30;
              -60,48; -72,48],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Ground1.p) annotation (points=[-6,-54; 20,-54; 20,-12; 50,
              -12; 50,-20],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Mn2.D) annotation (points=[-6,-48; -6,-24],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.G, in2) annotation (points=[-26,-12; -72,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S, Mn2.B)
      annotation (points=[-6,-12; -6,-18], style(color=3, rgbcolor={0,0,255}));
    connect(Mn2.S, Ground1.p) annotation (points=[-6,-12; 50,-12; 50,-20],
                   style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.B, Mp2.S) annotation (points=[-6,54; -6,48],   style(color=3,
            rgbcolor={0,0,255}));
        connect(Mp1.D, out1) annotation (points=[-6,18; 80,18], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mp2.S, V1.p) annotation (points=[-6,48; -6,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        connect(V1.n, Ground2.p) annotation (points=[30,40; 50,40], style(color=
               3, rgbcolor={0,0,255}));
  end NAND;
    BondLib.Electrical.Analog.Spice.Interfaces.SPin set1
      annotation (extent=[-84,-4; -64,16]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin reset1
      annotation (extent=[-10,-86; 10,-66]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin q1
      annotation (extent=[64,-4; 84,16]);
    annotation (Diagram);
    NAND NAND1 annotation (extent=[-10,28; 10,48]);
    NAND NAND2 annotation (extent=[-10,-20; 10,0]);
  equation
    connect(set1, NAND1.in1) annotation (points=[-74,6; -60,6; -60,42.8; -7.2,
            42.8],
        style(color=2, rgbcolor={0,255,0}));
    connect(q1, NAND2.in1) annotation (points=[74,6; -32,6; -32,-5.2; -7.2,-5.2],
        style(color=2, rgbcolor={0,255,0}));
      connect(NAND2.out1, NAND1.in2) annotation (points=[8,-8.2; 20,-8.2; 20,20;
            -20,20; -20,36.8; -7.2,36.8], style(color=2, rgbcolor={0,255,0}));
      connect(reset1, NAND2.in2) annotation (points=[0,-76; 0,-30; -20,-30; -20,
            -11.2; -7.2,-11.2], style(color=2, rgbcolor={0,255,0}));
      connect(q1, NAND1.out1) annotation (points=[74,6; 50,6; 50,39.8; 8,39.8],
          style(color=2, rgbcolor={0,255,0}));
  end SR;
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=0.001,
      width=0.25,
      falling=0.001,
      period=0.5,
      offset=0,
      startTime=0) annotation (extent=[-50,-10; -30,10],rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-10,-70; 10,-50]);
    annotation (Diagram(Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using Radau-IIa integrator:"),                  Line(points=[-90,80;
              90,80],         style(color=42, rgbcolor={127,0,0}))),
      experiment(Algorithm="Radau"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>Since the difficulties encountered in the simulation of problem</b></font> <b>test21</b> <font color=blue><b>were of a numerical nature, I tried changing the integration algorithm.  I used</b></font> <b>Radau-IIa</b> <font color=blue><b>instead of</b></font> <b>DASSL</b><font color=blue><b>.</b></font> <p>

<font color=blue><b>This time around, the</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> simulation terminated without failure:</b></font> <p>
<img src=\"../Images/test21d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=5,
      rising=0.001,
      falling=0.001,
      offset=0,
      startTime=0,
      width=0.5,
      period=1)    annotation (extent=[-10,-10; 10,10], rotation=270);
    SR SR1 annotation (extent=[-10,40; 10,60]);
    BondLib.Electrical.Analog.Spice.R R1(R=1e12)
      annotation (extent=[30,-10; 50,10],  rotation=-90);
  equation
    connect(VT1.n, Ground1.p)
      annotation (points=[-40,-10; -40,-50; 0,-50],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n, Ground1.p)               annotation (points=[-1.83691e-015,
          -10; -1.83691e-015,-30; 0,-30; 0,-50],
                    style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, SR1.set1)               annotation (points=[-40,10; -40,50.6;
          -7.4,50.6],  style(color=3, rgbcolor={0,0,255}));
    connect(VT2.p, SR1.reset1)               annotation (points=[1.83691e-015,
          10; 1.83691e-015,26.2; 0,26.2; 0,42.4],
                                     style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, SR1.q1) annotation (points=[40,10; 40,50.6; 7.4,50.6], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground1.p) annotation (points=[40,-10; 40,-50; 0,-50], style(
          color=3, rgbcolor={0,0,255}));
  end test21_II;

  model test22

  model INV

    BondLib.Electrical.Analog.Spice.Interfaces.SPin input1
      annotation (extent=[-90,10; -70,30]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin output1
      annotation (extent=[70,10; 90,30]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin power1
      annotation (extent=[-10,-72; 10,-52]);
    BondLib.Electrical.Analog.Spice.Mp Mp1(
        Level=1,
        VT0=-0.5,
        KP=220e-6,
        LAMBDA=0.01,
        TOX=50e-9,
        CGB0=3e-9,
        CGD0=4e-9,
        CGS0=4e-9,
        L=10e-6,
        W=90e-6)
      annotation (extent=[-20,14; 0,38]);
    BondLib.Electrical.Analog.Spice.Mn Mn1(L=10e-6, W=90e-6,
        Level=1,
        VT0=0.5,
        KP=660e-6,
        LAMBDA=0.05,
        TOX=50e-9,
        CGB0=2e-9,
        CGD0=3e-9,
        CGS0=3e-9)
      annotation (extent=[-14,-26; 6,-2]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[10,-50; 30,-30]);
  equation
    connect(Mp1.D, power1) annotation (points=[0,32; 40,32; 40,-62; 0,-62],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.G, input1) annotation (points=[-20,20; -80,20],         style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn1.D, power1) annotation (points=[6,-8; 40,-8; 40,-62; 0,-62],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, input1) annotation (points=[-14,-20; -40,-20; -40,20; -80,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Mn1.S)
      annotation (points=[6,-14; 6,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Ground1.p) annotation (points=[6,-20; 20,-20; 20,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mp1.S, output1) annotation (points=[0,20; 80,20],        style(
          color=3, rgbcolor={0,0,255}));
    connect(Mp1.B, Mp1.S)
      annotation (points=[0,26; 0,20], style(color=3, rgbcolor={0,0,255}));
  end INV;
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[0,-50; 20,-30],   rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,-80; 20,-60]);
    annotation (Diagram(
        Ellipse(extent=[-1,49; 1,47], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Ellipse(extent=[29,37; 31,35], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Ellipse(extent=[59,-9; 61,-11], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Ellipse(extent=[79,-9; 81,-11], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Ellipse(extent=[-67,37; -65,35], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1)),
        Ellipse(extent=[9,-23; 11,-25], style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255},
            fillPattern=1))),
                         experiment(StopTime=1e-005),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
* * * *  TRANSMISSION GATE TEST  * * * *
* DEFINE SUBCIRCUIT
*
.SUBCKT INV   1      3       2
*           INPUT, OUTPUT, POWER
MP 3 1 2 2 PCHAN L=10U W=90U
MN 3 1 0 0 NCHAN L=10U W=90U
.ENDS INV
*
* DEFINE MAIN CIRCUIT
*
VDS 5 0 DC 5
VSIG 1 0 SIN (2.5V 2.5V 250KHZ 0 0)
VPULSE 3 0 PULSE (0V 5V 1US 1NS 1NS 1US 2US
MN 1 3 2 0 NCHAN L=5U W=20U
MP 2 4 1 5 PCHAN L=5U W=60U
RL 2 0 100
CL 2 0 1PF
*
* BRING IN THE INVERTER SUBCIRCUIT
*
X1 3 4 5 INV
*
* DEFINE THE MODELS FOR BOTH THE MAIN AND SUBCIRCUIT
*
.MODEL PCHAN PMOS
+(LEVEL=1,VTO=-.5,TOX=50N,KP=220U,LAMBDA=.01,
+CGDO=4NF,CGSO=4NF,CGBO=3NF)
.MODEL NCHAN NMOS
+(LEVEL=1,VTO=.5,TOX=50N,KP=660U,LAMBDA=.05,
+CGDO=3NF,CGSO=3NF,CGBO=2NF)
* DEFINE ANALYSIS
*
.TRAN .1US 10US
.PRINT TRAN I(VSIG)
.OPTION NOINTR METHOD=GEAR acct list
.END
</pre> <p>

<hr> <p>

<font color=blue><b>Since I couldn't get subcircuits to work in my version of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> yet, I only show the simulation results obtained with</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>Spice3g</b></font> simulation results: <p>
<img src=\"../Images/test22a.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test22b.png\"> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The peaks are a bit smaller in</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>in comparison with</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.SineVoltage VS1(
      V=2.5,
      phase=0,
      freqHz=250000,
      offset=2.5,
      startTime=0) annotation (extent=[-90,66; -70,86],
                                                      rotation=270);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=1e-9,
      width=1e-6,
      falling=1e-9,
      period=2e-6,
      offset=0,
      startTime=1e-6) annotation (extent=[-90,10; -70,30], rotation=270);
    BondLib.Electrical.Analog.Spice.Mn Mn1(
      Level=1,
      VT0=0.5,
      KP=660e-6,
      LAMBDA=0.05,
      TOX=50e-9,
      CGB0=2e-9,
      CGD0=3e-9,
      CGS0=3e-9,
      L=5e-6,
      W=20e-6)                             annotation (extent=[-30,30; -10,54]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[70,-80; 90,-60]);
    BondLib.Electrical.Analog.Spice.Mp Mp1(
      Level=1,
      VT0=-0.5,
      KP=220e-6,
      LAMBDA=0.01,
      TOX=50e-9,
      CGB0=3e-9,
      CGD0=4e-9,
      CGS0=4e-9,
      L=5e-6,
      W=60e-6)                             annotation (extent=[-30,-2; -10,22]);
    INV INV1 annotation (extent=[-60,-20; -40,0]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-90,-80; -70,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-90,40; -70,60]);
    BondLib.Electrical.Analog.Spice.R R1(R=100)
      annotation (extent=[50,0; 70,20],    rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=1e-12)
                                         annotation (extent=[20,0; 40,20],  rotation=270);
  equation
    connect(Ground1.p, VC1.n)
      annotation (points=[10,-60; 10,-55; 10,-50; 10,-50],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.D, VS1.p)          annotation (points=[-10,48; 0,48; 0,90; -80,
          90; -80,86],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G, VT1.p)               annotation (points=[-30,36; -80,36; -80,
          30],     style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B, Ground2.p) annotation (points=[-10,42; 80,42; 80,-60], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn1.S, Mp1.D) annotation (points=[-10,36; -10,16],         style(
          color=3, rgbcolor={0,0,255}));
    connect(Mp1.B, VC1.p)              annotation (points=[-10,10; 10,10; 10,
          -30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.S, VS1.p)          annotation (points=[-10,4; 0,4; 0,90; -80,90;
          -80,86],     style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, INV1.input1)               annotation (points=[-80,30; -80,
          36; -66,36; -66,-8; -58,-8],
                             style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.G, INV1.output1) annotation (points=[-30,4; -34,4; -34,-8; -42,
          -8],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground4.p, VS1.n)
      annotation (points=[-80,60; -80,66], style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, VT1.n)               annotation (points=[-80,-60; -80,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[60,0; 60,-10; 80,-10; 80,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, Mn1.S) annotation (points=[60,20; 60,36; -10,36], style(color=
           3, rgbcolor={0,0,255}));
    connect(C1.p, Mn1.S) annotation (points=[30,20; 30,36; -10,36], style(color=
           3, rgbcolor={0,0,255}));
    connect(C1.n, Ground2.p) annotation (points=[30,0; 30,-10; 80,-10; 80,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, INV1.power1) annotation (points=[10,-30; 10,-24; -50,-24;
          -50,-16.2], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
  end test22;

  model test23

  model ic_2_top
  model ic_1_04x035

    BondLib.Electrical.Analog.Spice.Interfaces.SPin N1_1
      annotation (extent=[-92,78; -72,98]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin N21_1
      annotation (extent=[-92,-98; -72,-78]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin gref
      annotation (extent=[84,-104; 104,-84]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Basic.Resistor Resistor1(R=2.38095)
      annotation (extent=[-46,78; -26,98]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor1(L=5.9623e-12)
      annotation (extent=[-22,78; -2,98]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor1(C=6.59657e-16)
      annotation (extent=[18,82; 38,102]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor2(R=1.05408e10)
      annotation (extent=[46,72; 66,92]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor3(R=2.38095)
      annotation (extent=[-46,58; -26,78]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor2(L=5.9623e-12)
      annotation (extent=[-22,58; -2,78]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor2(C=6.59657e-16)
      annotation (extent=[18,62; 38,82]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor4(R=1.05408e10)
      annotation (extent=[46,52; 66,72]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor5(R=1.05408e10)
      annotation (extent=[46,32; 66,52]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor3(C=6.59657e-16)
      annotation (extent=[18,42; 38,62]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor3(L=5.9623e-12)
      annotation (extent=[-22,38; -2,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor6(R=2.38095)
      annotation (extent=[-46,38; -26,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor7(R=1.05408e10)
      annotation (extent=[46,12; 66,32]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor4(C=6.59657e-16)
      annotation (extent=[18,22; 38,42]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor4(L=5.9623e-12)
      annotation (extent=[-22,18; -2,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor8(R=2.38095)
      annotation (extent=[-46,18; -26,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor9(R=1.05408e10)
      annotation (extent=[46,-8; 66,12]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor5(C=6.59657e-16)
      annotation (extent=[18,2; 38,22]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor5(L=5.9623e-12)
      annotation (extent=[-22,-2; -2,18]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor10(R=2.38095)
      annotation (extent=[-46,-2; -26,18]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor11(R=1.05408e10)
      annotation (extent=[46,-28; 66,-8]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor6(C=6.59657e-16)
      annotation (extent=[18,-18; 38,2]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor6(L=5.9623e-12)
      annotation (extent=[-22,-22; -2,-2]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor12(R=2.38095)
      annotation (extent=[-46,-22; -26,-2]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor13(R=1.05408e10)
      annotation (extent=[46,-48; 66,-28]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor7(C=6.59657e-16)
      annotation (extent=[18,-38; 38,-18]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor7(L=5.9623e-12)
      annotation (extent=[-22,-42; -2,-22]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor14(R=2.38095)
      annotation (extent=[-46,-42; -26,-22]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor15(R=1.05408e10)
      annotation (extent=[46,-68; 66,-48]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor8(C=6.59657e-16)
      annotation (extent=[18,-58; 38,-38]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor8(L=5.9623e-12)
      annotation (extent=[-22,-62; -2,-42]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor16(R=2.38095)
      annotation (extent=[-46,-62; -26,-42]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor17(R=1.05408e10)
      annotation (extent=[46,-88; 66,-68]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor9(C=6.59657e-16)
      annotation (extent=[18,-78; 38,-58]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor9(L=5.9623e-12)
      annotation (extent=[-22,-82; -2,-62]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor18(R=2.38095)
      annotation (extent=[-46,-82; -26,-62]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor19(R=1.05408e10)
      annotation (extent=[46,-108; 66,-88]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor10(C=6.59657e-16)
      annotation (extent=[18,-98; 38,-78]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor10(L=5.9623e-12)
      annotation (extent=[-22,-102; -2,-82]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor20(R=2.38095)
      annotation (extent=[-46,-102; -26,-82]);
  equation
    connect(N1_1, Resistor1.p)
      annotation (points=[-82,88; -46,88], style(color=2, rgbcolor={0,255,0}));
    connect(Resistor1.n, Inductor1.p)
      annotation (points=[-26,88; -22,88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Capacitor1.p) annotation (points=[-2,88; 0,88; 0,92;
          18,92], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor1.n, gref) annotation (points=[38,92; 94,92; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor2.n, gref) annotation (points=[66,82; 94,82; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Resistor2.p, Inductor1.n) annotation (points=[46,82; 0,82; 0,88; -2,
          88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Resistor3.p) annotation (points=[-2,88; 0,88; 0,78;
          -62,78; -62,68; -46,68], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor3.n, Inductor2.p)
      annotation (points=[-26,68; -22,68], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Capacitor2.p) annotation (points=[-2,68; 0,68; 0,72;
          18,72], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor4.p) annotation (points=[-2,68; 0,68; 0,62; 46,
          62], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor2.n, gref) annotation (points=[38,72; 94,72; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor4.n, gref) annotation (points=[66,62; 94,62; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor6.p) annotation (points=[-2,68; 0,68; 0,58;
          -62,58; -62,48; -46,48], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor6.n, Inductor3.p)
      annotation (points=[-26,48; -22,48], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Capacitor3.p) annotation (points=[-2,48; 0,48; 0,52;
          18,52], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor5.p) annotation (points=[-2,48; 0,48; 0,42; 46,
          42], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor3.n, gref) annotation (points=[38,52; 94,52; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor5.n, gref) annotation (points=[66,42; 94,42; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor8.p) annotation (points=[-2,48; 0,48; 0,38;
          -62,38; -62,28; -46,28], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor8.n, Inductor4.p)
      annotation (points=[-26,28; -22,28], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor7.p) annotation (points=[-2,28; 0,28; 0,22; 46,
          22], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Capacitor4.p) annotation (points=[-2,28; 0,28; 0,32;
          18,32], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor4.n, gref) annotation (points=[38,32; 94,32; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor7.n, gref) annotation (points=[66,22; 94,22; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor10.p) annotation (points=[-2,28; 0,28; 0,18;
          -62,18; -62,8; -46,8], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor10.n, Inductor5.p)
      annotation (points=[-26,8; -22,8], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Resistor9.p) annotation (points=[-2,8; 0,8; 0,2; 46,2],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Capacitor5.p) annotation (points=[-2,8; 0,8; 0,12; 18,
          12], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor5.n, gref) annotation (points=[38,12; 94,12; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor9.n, gref) annotation (points=[66,2; 94,2; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Resistor12.p) annotation (points=[-2,8; 0,8; 0,-2; -62,
          -2; -62,-12; -46,-12], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor12.n, Inductor6.p) annotation (points=[-26,-12; -22,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Capacitor6.p) annotation (points=[-2,-12; 0,-12; 0,-8;
          18,-8], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Resistor11.p) annotation (points=[-2,-12; 0,-12; 0,-18;
          46,-18], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor6.n, gref) annotation (points=[38,-8; 94,-8; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor11.n, gref) annotation (points=[66,-18; 94,-18; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Resistor14.p) annotation (points=[-2,-12; 0,-12; 0,-22;
          -62,-22; -62,-32; -46,-32], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor14.n, Inductor7.p) annotation (points=[-26,-32; -22,-32],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Capacitor7.p) annotation (points=[-2,-32; 0,-32; 0,-28;
          18,-28], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Resistor13.p) annotation (points=[-2,-32; 0,-32; 0,-38;
          46,-38], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor7.n, gref) annotation (points=[38,-28; 94,-28; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor13.n, gref) annotation (points=[66,-38; 94,-38; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Resistor16.p) annotation (points=[-2,-32; 0,-32; 0,-42;
          -62,-42; -62,-52; -46,-52], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor16.n, Inductor8.p) annotation (points=[-26,-52; -22,-52],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, Capacitor8.p) annotation (points=[-2,-52; 0,-52; 0,-48;
          18,-48], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, Resistor15.p) annotation (points=[-2,-52; 0,-52; 0,-58;
          46,-58], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor8.n, gref) annotation (points=[38,-48; 94,-48; 94,-94; 94,
          -94], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor15.n, gref) annotation (points=[66,-58; 94,-58; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, Resistor18.p) annotation (points=[-2,-52; 0,-52; 0,-62;
          -62,-62; -62,-72; -46,-72], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor9.n, Capacitor9.p) annotation (points=[-2,-72; 0,-72; 0,-68;
          18,-68], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor18.n, Inductor9.p) annotation (points=[-26,-72; -22,-72],
        style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor9.n, gref) annotation (points=[38,-68; 94,-68; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor9.n, Resistor20.p) annotation (points=[-2,-72; 0,-72; 0,-82;
          -62,-82; -62,-92; -46,-92], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor20.n, Inductor10.p) annotation (points=[-26,-92; -22,-92],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor10.n, Capacitor10.p) annotation (points=[-2,-92; 0,-92; 0,
          -88; 18,-88], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor10.n, gref) annotation (points=[38,-88; 94,-88; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor10.n, Resistor19.p) annotation (points=[-2,-92; 0,-92; 0,
          -98; 46,-98], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor19.n, gref) annotation (points=[66,-98; 94,-98; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor9.n, Resistor17.p) annotation (points=[-2,-72; 0,-72; 0,-78;
          46,-78], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor17.n, gref) annotation (points=[66,-78; 94,-78; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor10.n, N21_1) annotation (points=[-2,-92; 0,-92; 0,-102; -82,
          -102; -82,-88], style(color=3, rgbcolor={0,0,255}));
  end ic_1_04x035;

  model ic_2_02x035

    BondLib.Electrical.Analog.Spice.Interfaces.SPin N1_1
      annotation (extent=[-92,78; -72,98]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin N17_1
      annotation (extent=[-92,-98; -72,-78]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin gref
      annotation (extent=[84,-104; 104,-84]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Basic.Resistor Resistor1(R=4.7619)
      annotation (extent=[-46,78; -26,98]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor1(L=6.59672e-12)
      annotation (extent=[-22,78; -2,98]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor1(C=6.2369e-16)
      annotation (extent=[18,82; 38,102]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor2(R=1.09259e10)
      annotation (extent=[46,72; 66,92]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor3(R=4.7619)
      annotation (extent=[-46,58; -26,78]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor2(L=6.59672e-12)
      annotation (extent=[-22,58; -2,78]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor2(C=6.2369e-16)
      annotation (extent=[18,62; 38,82]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor4(R=1.09259e10)
      annotation (extent=[46,52; 66,72]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor5(R=1.09259e10)
      annotation (extent=[46,32; 66,52]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor3(C=6.2369e-16)
      annotation (extent=[18,42; 38,62]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor3(L=6.59672e-12)
      annotation (extent=[-22,38; -2,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor6(R=4.7619)
      annotation (extent=[-46,38; -26,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor7(R=1.09259e10)
      annotation (extent=[46,12; 66,32]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor4(C=6.2369e-16)
      annotation (extent=[18,22; 38,42]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor4(L=6.59672e-12)
      annotation (extent=[-22,18; -2,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor8(R=4.7619)
      annotation (extent=[-46,18; -26,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor9(R=1.09259e10)
      annotation (extent=[46,-8; 66,12]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor5(C=6.2369e-16)
      annotation (extent=[18,2; 38,22]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor5(L=6.59672e-12)
      annotation (extent=[-22,-2; -2,18]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor10(R=4.7619)
      annotation (extent=[-46,-2; -26,18]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor11(R=1.09259e10)
      annotation (extent=[46,-28; 66,-8]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor6(C=6.2369e-16)
      annotation (extent=[18,-18; 38,2]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor6(L=6.59672e-12)
      annotation (extent=[-22,-22; -2,-2]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor12(R=4.7619)
      annotation (extent=[-46,-22; -26,-2]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor13(R=1.09259e10)
      annotation (extent=[46,-48; 66,-28]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor7(C=6.2369e-16)
      annotation (extent=[18,-38; 38,-18]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor7(L=6.59672e-12)
      annotation (extent=[-22,-42; -2,-22]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor14(R=4.7619)
      annotation (extent=[-46,-42; -26,-22]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor15(R=1.09259e10)
      annotation (extent=[46,-68; 66,-48]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor8(C=6.2369e-16)
      annotation (extent=[18,-58; 38,-38]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor8(L=6.59672e-12)
      annotation (extent=[-22,-62; -2,-42]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor16(R=4.7619)
      annotation (extent=[-46,-62; -26,-42]);
  equation
    connect(N1_1, Resistor1.p)
      annotation (points=[-82,88; -46,88], style(color=2, rgbcolor={0,255,0}));
    connect(Resistor1.n, Inductor1.p)
      annotation (points=[-26,88; -22,88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Capacitor1.p) annotation (points=[-2,88; 0,88; 0,92;
          18,92], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor1.n, gref) annotation (points=[38,92; 94,92; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor2.n, gref) annotation (points=[66,82; 94,82; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Resistor2.p, Inductor1.n) annotation (points=[46,82; 0,82; 0,88; -2,
          88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Resistor3.p) annotation (points=[-2,88; 0,88; 0,78;
          -62,78; -62,68; -46,68], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor3.n, Inductor2.p)
      annotation (points=[-26,68; -22,68], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Capacitor2.p) annotation (points=[-2,68; 0,68; 0,72;
          18,72], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor4.p) annotation (points=[-2,68; 0,68; 0,62; 46,
          62], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor2.n, gref) annotation (points=[38,72; 94,72; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor4.n, gref) annotation (points=[66,62; 94,62; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor6.p) annotation (points=[-2,68; 0,68; 0,58;
          -62,58; -62,48; -46,48], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor6.n, Inductor3.p)
      annotation (points=[-26,48; -22,48], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Capacitor3.p) annotation (points=[-2,48; 0,48; 0,52;
          18,52], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor5.p) annotation (points=[-2,48; 0,48; 0,42; 46,
          42], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor3.n, gref) annotation (points=[38,52; 94,52; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor5.n, gref) annotation (points=[66,42; 94,42; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor8.p) annotation (points=[-2,48; 0,48; 0,38;
          -62,38; -62,28; -46,28], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor8.n, Inductor4.p)
      annotation (points=[-26,28; -22,28], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor7.p) annotation (points=[-2,28; 0,28; 0,22; 46,
          22], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Capacitor4.p) annotation (points=[-2,28; 0,28; 0,32;
          18,32], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor4.n, gref) annotation (points=[38,32; 94,32; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor7.n, gref) annotation (points=[66,22; 94,22; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor10.p) annotation (points=[-2,28; 0,28; 0,18;
          -62,18; -62,8; -46,8], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor10.n, Inductor5.p)
      annotation (points=[-26,8; -22,8], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Resistor9.p) annotation (points=[-2,8; 0,8; 0,2; 46,2],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Capacitor5.p) annotation (points=[-2,8; 0,8; 0,12; 18,
          12], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor5.n, gref) annotation (points=[38,12; 94,12; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor9.n, gref) annotation (points=[66,2; 94,2; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Resistor12.p) annotation (points=[-2,8; 0,8; 0,-2; -62,
          -2; -62,-12; -46,-12], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor12.n, Inductor6.p) annotation (points=[-26,-12; -22,-12],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Capacitor6.p) annotation (points=[-2,-12; 0,-12; 0,-8;
          18,-8], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Resistor11.p) annotation (points=[-2,-12; 0,-12; 0,-18;
          46,-18], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor6.n, gref) annotation (points=[38,-8; 94,-8; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor11.n, gref) annotation (points=[66,-18; 94,-18; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor6.n, Resistor14.p) annotation (points=[-2,-12; 0,-12; 0,-22;
          -62,-22; -62,-32; -46,-32], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor14.n, Inductor7.p) annotation (points=[-26,-32; -22,-32],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Capacitor7.p) annotation (points=[-2,-32; 0,-32; 0,-28;
          18,-28], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Resistor13.p) annotation (points=[-2,-32; 0,-32; 0,-38;
          46,-38], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor7.n, gref) annotation (points=[38,-28; 94,-28; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor13.n, gref) annotation (points=[66,-38; 94,-38; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor7.n, Resistor16.p) annotation (points=[-2,-32; 0,-32; 0,-42;
          -62,-42; -62,-52; -46,-52], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor16.n, Inductor8.p) annotation (points=[-26,-52; -22,-52],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, Capacitor8.p) annotation (points=[-2,-52; 0,-52; 0,-48;
          18,-48], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, Resistor15.p) annotation (points=[-2,-52; 0,-52; 0,-58;
          46,-58], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor8.n, gref) annotation (points=[38,-48; 94,-48; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor15.n, gref) annotation (points=[66,-58; 94,-58; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor8.n, N17_1) annotation (points=[-2,-52; 0,-52; 0,-88; -82,
          -88], style(color=3, rgbcolor={0,0,255}));
  end ic_2_02x035;

  model ic_3_02x035

    BondLib.Electrical.Analog.Spice.Interfaces.SPin N1_1
      annotation (extent=[-92,78; -72,98]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin N17_1
      annotation (extent=[-92,-98; -72,-78]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin gref
      annotation (extent=[84,-104; 104,-84]);
    annotation (Diagram);
    BondLib.Electrical.Analog.Basic.Resistor Resistor1(R=4.7619)
      annotation (extent=[-46,78; -26,98]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor1(L=6.59672e-12)
      annotation (extent=[-22,78; -2,98]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor1(C=6.2369e-16)
      annotation (extent=[18,82; 38,102]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor2(R=1.09259e10)
      annotation (extent=[46,72; 66,92]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor3(R=4.7619)
      annotation (extent=[-46,58; -26,78]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor2(L=6.59672e-12)
      annotation (extent=[-22,58; -2,78]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor2(C=6.2369e-16)
      annotation (extent=[18,62; 38,82]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor4(R=1.09259e10)
      annotation (extent=[46,52; 66,72]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor5(R=1.09259e10)
      annotation (extent=[46,32; 66,52]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor3(C=6.2369e-16)
      annotation (extent=[18,42; 38,62]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor3(L=6.59672e-12)
      annotation (extent=[-22,38; -2,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor6(R=4.7619)
      annotation (extent=[-46,38; -26,58]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor7(R=1.09259e10)
      annotation (extent=[46,12; 66,32]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor4(C=6.2369e-16)
      annotation (extent=[18,22; 38,42]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor4(L=6.59672e-12)
      annotation (extent=[-22,18; -2,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor8(R=4.7619)
      annotation (extent=[-46,18; -26,38]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor9(R=1.09259e10)
      annotation (extent=[46,-8; 66,12]);
    BondLib.Electrical.Analog.Basic.Capacitor Capacitor5(C=6.2369e-16)
      annotation (extent=[18,2; 38,22]);
    BondLib.Electrical.Analog.Basic.Inductor Inductor5(L=6.59672e-12)
      annotation (extent=[-22,-2; -2,18]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor10(R=4.7619)
      annotation (extent=[-46,-2; -26,18]);
  equation
    connect(N1_1, Resistor1.p)
      annotation (points=[-82,88; -46,88], style(color=2, rgbcolor={0,255,0}));
    connect(Resistor1.n, Inductor1.p)
      annotation (points=[-26,88; -22,88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Capacitor1.p) annotation (points=[-2,88; 0,88; 0,92;
          18,92], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor1.n, gref) annotation (points=[38,92; 94,92; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor2.n, gref) annotation (points=[66,82; 94,82; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Resistor2.p, Inductor1.n) annotation (points=[46,82; 0,82; 0,88; -2,
          88], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor1.n, Resistor3.p) annotation (points=[-2,88; 0,88; 0,78;
          -62,78; -62,68; -46,68], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor3.n, Inductor2.p)
      annotation (points=[-26,68; -22,68], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Capacitor2.p) annotation (points=[-2,68; 0,68; 0,72;
          18,72], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor4.p) annotation (points=[-2,68; 0,68; 0,62; 46,
          62], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor2.n, gref) annotation (points=[38,72; 94,72; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor4.n, gref) annotation (points=[66,62; 94,62; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor2.n, Resistor6.p) annotation (points=[-2,68; 0,68; 0,58;
          -62,58; -62,48; -46,48], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor6.n, Inductor3.p)
      annotation (points=[-26,48; -22,48], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Capacitor3.p) annotation (points=[-2,48; 0,48; 0,52;
          18,52], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor5.p) annotation (points=[-2,48; 0,48; 0,42; 46,
          42], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor3.n, gref) annotation (points=[38,52; 94,52; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor5.n, gref) annotation (points=[66,42; 94,42; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor3.n, Resistor8.p) annotation (points=[-2,48; 0,48; 0,38;
          -62,38; -62,28; -46,28], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor8.n, Inductor4.p)
      annotation (points=[-26,28; -22,28], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor7.p) annotation (points=[-2,28; 0,28; 0,22; 46,
          22], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Capacitor4.p) annotation (points=[-2,28; 0,28; 0,32;
          18,32], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor4.n, gref) annotation (points=[38,32; 94,32; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor7.n, gref) annotation (points=[66,22; 94,22; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor4.n, Resistor10.p) annotation (points=[-2,28; 0,28; 0,18;
          -62,18; -62,8; -46,8], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor10.n, Inductor5.p)
      annotation (points=[-26,8; -22,8], style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Resistor9.p) annotation (points=[-2,8; 0,8; 0,2; 46,2],
        style(color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, Capacitor5.p) annotation (points=[-2,8; 0,8; 0,12; 18,
          12], style(color=3, rgbcolor={0,0,255}));
    connect(Capacitor5.n, gref) annotation (points=[38,12; 94,12; 94,-94],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor9.n, gref) annotation (points=[66,2; 94,2; 94,-94], style(
          color=3, rgbcolor={0,0,255}));
    connect(Inductor5.n, N17_1) annotation (points=[-2,8; 0,8; 0,-86; -82,-86;
          -82,-88], style(color=3, rgbcolor={0,0,255}));
  end ic_3_02x035;

    BondLib.Electrical.Analog.Spice.Interfaces.SPin in1
      annotation (extent=[-92,-10; -72,10]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin out1
      annotation (extent=[70,28; 90,48]);
    BondLib.Electrical.Analog.Spice.Interfaces.SPin out2
      annotation (extent=[70,-48; 90,-28]);
    annotation (Diagram);
    ic_1_04x035 ic_1_04x035_1 annotation (extent=[-30,10; -10,30]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[0,0; 20,20]);
    ic_2_02x035 ic_2_02x035_1 annotation (extent=[-30,-30; -10,-10]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[0,-40; 20,-20]);
    ic_3_02x035 ic_3_02x035_1 annotation (extent=[-30,-70; -10,-50]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[0,-80; 20,-60]);
  equation
    connect(in1, ic_1_04x035_1.N1_1) annotation (points=[-82,0; -50,0; -50,28.8;
            -28.2,28.8],
                       style(color=2, rgbcolor={0,255,0}));
    connect(ic_2_02x035_1.N17_1, out1) annotation (points=[-28.2,-28.8; -28.2,
            -40; 50,-40; 50,38; 80,38],
                                      style(color=2, rgbcolor={0,255,0}));
      connect(ic_2_02x035_1.gref, Ground2.p) annotation (points=[-10.6,-29.4; 0,
            -29.4; 0,-10; 10,-10; 10,-20], style(color=2, rgbcolor={0,255,0}));
      connect(ic_1_04x035_1.gref, Ground1.p) annotation (points=[-10.6,10.6; 0,
            10.6; 0,30; 10,30; 10,20], style(color=2, rgbcolor={0,255,0}));
      connect(ic_3_02x035_1.gref, Ground3.p) annotation (points=[-10.6,-69.4; 0,
            -69.4; 0,-50; 10,-50; 10,-60], style(color=2, rgbcolor={0,255,0}));
      connect(out2, ic_3_02x035_1.N17_1) annotation (points=[80,-38; 80,-80;
            -28.2,-80; -28.2,-68.8], style(color=2, rgbcolor={0,255,0}));
      connect(ic_1_04x035_1.N21_1, ic_3_02x035_1.N1_1) annotation (points=[
            -28.2,11.2; -28.2,0; -40,0; -40,-51.2; -28.2,-51.2], style(color=2,
            rgbcolor={0,255,0}));
      connect(ic_1_04x035_1.N21_1, ic_2_02x035_1.N1_1) annotation (points=[
            -28.2,11.2; -28.2,0; -40,0; -40,-11.2; -28.2,-11.2], style(color=2,
            rgbcolor={0,255,0}));
  end ic_2_top;
    BondLib.Electrical.Analog.Sources.RampVoltage RampVoltage1(
      V=5,
      duration=1e-14,
      offset=0,
      startTime=1e-12) annotation (extent=[-70,0; -50,20],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-40; -50,-20]);
    annotation (Diagram, experiment(StopTime=1e-011),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Transmission line

.SUBCKT ic_1_0.4x0.35 N1_1 N21_1 gref
R1_1 N1_1 N2_1 2.38095
L1_1 N2_1 N3_1 5.9623e-12
C1_1 N3_1 gref 6.59657e-16
RG1_1 N3_1 gref 1.05408e+10

R3_1 N3_1 N4_1 2.38095
L3_1 N4_1 N5_1 5.9623e-12
C3_1 N5_1 gref 6.59657e-16
RG3_1 N5_1 gref 1.05408e+10

R5_1 N5_1 N6_1 2.38095
L5_1 N6_1 N7_1 5.9623e-12
C5_1 N7_1 gref 6.59657e-16
RG5_1 N7_1 gref 1.05408e+10

R7_1 N7_1 N8_1 2.38095
L7_1 N8_1 N9_1 5.9623e-12
C7_1 N9_1 gref 6.59657e-16
RG7_1 N9_1 gref 1.05408e+10

R9_1 N9_1 N10_1 2.38095
L9_1 N10_1 N11_1 5.9623e-12
C9_1 N11_1 gref 6.59657e-16
RG9_1 N11_1 gref 1.05408e+10

R11_1 N11_1 N12_1 2.38095
L11_1 N12_1 N13_1 5.9623e-12
C11_1 N13_1 gref 6.59657e-16
RG11_1 N13_1 gref 1.05408e+10

R13_1 N13_1 N14_1 2.38095
L13_1 N14_1 N15_1 5.9623e-12
C13_1 N15_1 gref 6.59657e-16
RG13_1 N15_1 gref 1.05408e+10

R15_1 N15_1 N16_1 2.38095
L15_1 N16_1 N17_1 5.9623e-12
C15_1 N17_1 gref 6.59657e-16
RG15_1 N17_1 gref 1.05408e+10

R17_1 N17_1 N18_1 2.38095
L17_1 N18_1 N19_1 5.9623e-12
C17_1 N19_1 gref 6.59657e-16
RG17_1 N19_1 gref 1.05408e+10

R19_1 N19_1 N20_1 2.38095
L19_1 N20_1 N21_1 5.9623e-12
C19_1 N21_1 gref 6.59657e-16
RG19_1 N21_1 gref 1.05408e+10
.ENDS ic_1_0.4x0.35

.SUBCKT ic_2_0.2x0.35 N1_1 N17_1 gref
R1_1 N1_1 N2_1 4.7619
L1_1 N2_1 N3_1 6.59672e-12
C1_1 N3_1 gref 6.2369e-16
RG1_1 N3_1 gref 1.09259e+10

R3_1 N3_1 N4_1 4.7619
L3_1 N4_1 N5_1 6.59672e-12
C3_1 N5_1 gref 6.2369e-16
RG3_1 N5_1 gref 1.09259e+10

R5_1 N5_1 N6_1 4.7619
L5_1 N6_1 N7_1 6.59672e-12
C5_1 N7_1 gref 6.2369e-16
RG5_1 N7_1 gref 1.09259e+10

R7_1 N7_1 N8_1 4.7619
L7_1 N8_1 N9_1 6.59672e-12
C7_1 N9_1 gref 6.2369e-16
RG7_1 N9_1 gref 1.09259e+10

R9_1 N9_1 N10_1 4.7619
L9_1 N10_1 N11_1 6.59672e-12
C9_1 N11_1 gref 6.2369e-16
RG9_1 N11_1 gref 1.09259e+10

R11_1 N11_1 N12_1 4.7619
L11_1 N12_1 N13_1 6.59672e-12
C11_1 N13_1 gref 6.2369e-16
RG11_1 N13_1 gref 1.09259e+10

R13_1 N13_1 N14_1 4.7619
L13_1 N14_1 N15_1 6.59672e-12
C13_1 N15_1 gref 6.2369e-16
RG13_1 N15_1 gref 1.09259e+10

R15_1 N15_1 N16_1 4.7619
L15_1 N16_1 N17_1 6.59672e-12
C15_1 N17_1 gref 6.2369e-16
RG15_1 N17_1 gref 1.09259e+10
.ENDS ic_2_0.2x0.35

.SUBCKT ic_3_0.2x0.35 N1_1 N11_1 gref
R1_1 N1_1 N2_1 4.7619
L1_1 N2_1 N3_1 6.59672e-12
C1_1 N3_1 gref 6.2369e-16
RG1_1 N3_1 gref 1.09259e+10

R3_1 N3_1 N4_1 4.7619
L3_1 N4_1 N5_1 6.59672e-12
C3_1 N5_1 gref 6.2369e-16
RG3_1 N5_1 gref 1.09259e+10

R5_1 N5_1 N6_1 4.7619
L5_1 N6_1 N7_1 6.59672e-12
C5_1 N7_1 gref 6.2369e-16
RG5_1 N7_1 gref 1.09259e+10

R7_1 N7_1 N8_1 4.7619
L7_1 N8_1 N9_1 6.59672e-12
C7_1 N9_1 gref 6.2369e-16
RG7_1 N9_1 gref 1.09259e+10

R9_1 N9_1 N10_1 4.7619
L9_1 N10_1 N11_1 6.59672e-12
C9_1 N11_1 gref 6.2369e-16
RG9_1 N11_1 gref 1.09259e+10
.ENDS ic_3_0.2x0.35

.SUBCKT ic_2_top in out1 out2
X_ic_1_0.4x0.35 in n1 0 ic_1_0.4x0.35
X_ic_2_0.2x0.35 n1 out1 0 ic_2_0.2x0.35
X_ic_3_0.2x0.35 n1 out2 0 ic_3_0.2x0.35
.ENDS ic_2_top

V1 1 0 pulse (0 5 1.e-12 1.e-14 1.e-14 1 1 )
R1 1 2 50
Xline 2 3 4 ic_2_top
R2 3 0 30
R3 4 0 40

.tran 1.e-14 10.e-12 0 1.e-14
.END
</pre> <p>

<hr> <p>

<font color=blue><b>Since I couldn't get subcircuits to work in my version of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> yet, I only show the simulation results obtained with</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>Spice3g</b></font> simulation results: <p>
<img src=\"../Images/test23a.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test23b.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Resistor Resistor1(R=50)
      annotation (extent=[-40,40; -20,60]);
    ic_2_top ic_2_top1 annotation (extent=[0,40; 20,60]);
    BondLib.Electrical.Analog.Basic.Resistor Resistor2(R=30)
      annotation (extent=[50,0; 70,20],  rotation=270);
    BondLib.Electrical.Analog.Basic.Resistor Resistor3(R=40)
      annotation (extent=[20,0; 40,20],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[20,-40; 40,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[50,-40; 70,-20]);
  equation
    connect(RampVoltage1.n, Ground1.p)
      annotation (points=[-60,0; -60,-20],   style(color=3, rgbcolor={0,0,255}));
    connect(RampVoltage1.p, Resistor1.p) annotation (points=[-60,20; -60,50;
          -40,50],
               style(color=3, rgbcolor={0,0,255}));
    connect(Resistor1.n, ic_2_top1.in1)
      annotation (points=[-20,50; 1.8,50], style(color=3, rgbcolor={0,0,255}));
    connect(Resistor3.n, Ground2.p)
      annotation (points=[30,0; 30,-10; 30,-10; 30,-20],
                                          style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, Resistor2.n)
      annotation (points=[60,-20; 60,0],  style(color=3, rgbcolor={0,0,255}));
    connect(Resistor2.p, ic_2_top1.out1) annotation (points=[60,20; 60,53.8; 18,
          53.8],
        style(color=3, rgbcolor={0,0,255}));
    connect(Resistor3.p, ic_2_top1.out2) annotation (points=[30,20; 30,46.2; 18,
          46.2], style(color=3, rgbcolor={0,0,255}));
  end test23;

  model test24

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-50,-50; -30,-30]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=15)
      annotation (extent=[-70,-10; -50,10], rotation=270);
    annotation (Diagram, experiment(StopTime=10),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simulation Darlington Circuit

R1	1	2	10
R2	4	0	1000

Q1	5	2	3	Tran_NPN
Q2	5	3	4	Tran_NPN

VC1	5	0	15
VT1	1	0	dc=0 pwl(0 0 10 16)

.MODEL  Tran_NPN	NPN
.TRAN 		0.0001 10
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test24a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test24b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test24c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test24d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=16, duration=10)
      annotation (extent=[-50,-10; -30,10],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-70,-50; -50,-30]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[50,-50; 70,-30]);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[-30,30; -10,50], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[50,-10; 70,10],  rotation=-90);
    BondLib.Electrical.Analog.Spice.Qnv Q1(RC=1, RE=1)
      annotation (extent=[0,28; 20,52]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(RC=1, RE=1)
      annotation (extent=[40,22; 60,46]);
  equation
    connect(VR1.n, Ground1.p)          annotation (points=[-40,-10; -40,-30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground2.p, VC1.n)              annotation (points=[-60,-30; -60,-10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground3.p)
      annotation (points=[60,-10; 60,-30], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VR1.p) annotation (points=[-30,40; -40,40; -40,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[0,40; -10,40], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, VC1.p) annotation (points=[20,46; 20,60; -60,60; -60,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, Q1.E)
      annotation (points=[40,34; 20,34], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, Q1.C) annotation (points=[60,40; 60,60; 20,60; 20,46], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q2.E, R2.p)
      annotation (points=[60,28; 60,10], style(color=3, rgbcolor={0,0,255}));
  end test24;

  model test25

    BondLib.Electrical.Analog.Sources.ExpSineVoltage VE1(
      V=0.1,
      freqHz=0.2,
      damping=0.1) annotation (extent=[-60,-10; -40,10],rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-60,-70; -40,-50]);
    annotation (Diagram, experiment(StopTime=10),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simulation differential amplifier

R1	1	2	10
R2	6	8	100
R3	7	8	100
R4	0	4	10

Q1	6	2	5	Tran_NPN
Q2	7	4	5	Tran_NPN

VC1	8	0	15
IC1	5	0	0.16
VS1	1	0	dc=0 sin(0 0.1 0.2 0 0.1)

.MODEL  Tran_NPN	NPN
.TRAN 		0.001 10
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test25a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test25b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test25c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test25d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=15)
      annotation (extent=[0,60; 20,80],     rotation=180);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-20,50; 0,70]);
    BondLib.Electrical.Analog.Sources.ConstantCurrent IC1(I=0.16)
      annotation (extent=[20,0; 40,20],    rotation=0);
  public
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[30,-20; 50,0]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-30,-70; -10,-50]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-10,18; 10,42]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[-10,2; 10,-22]);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[-40,20; -20,40], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
      annotation (extent=[20,40; 40,60],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=100)
      annotation (extent=[50,40; 70,60],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=10)
      annotation (extent=[-30,-40; -10,-20],
                                           rotation=-90);
  equation
    connect(VE1.n, Ground1.p)
      annotation (points=[-50,-10; -50,-50], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground2.p)
      annotation (points=[0,70; -10,70], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, Q2.E)
      annotation (points=[10,24; 10,-4], style(color=3, rgbcolor={0,0,255}));
    connect(IC1.p, Q1.E) annotation (points=[20,10; 10,10; 10,24], style(color=3,
          rgbcolor={0,0,255}));
    connect(IC1.n, Ground3.p)
      annotation (points=[40,10; 40,0], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Q1.B)
      annotation (points=[-20,30; -10,30], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VE1.p) annotation (points=[-40,30; -50,30; -50,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, Q1.C) annotation (points=[30,40; 30,36; 10,36], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.p, VC1.p) annotation (points=[30,60; 30,70; 20,70], style(color=
            3, rgbcolor={0,0,255}));
    connect(R3.p, VC1.p) annotation (points=[60,60; 60,70; 20,70], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q2.C, R3.n) annotation (points=[10,-16; 10,-30; 60,-30; 60,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q2.B, R4.p) annotation (points=[-10,-10; -20,-10; -20,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(Ground4.p, R4.n) annotation (points=[-20,-50; -20,-40], style(color=
           3, rgbcolor={0,0,255}));
  end test25;

  model test26

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[30,-60; 50,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[10,40; 30,60],rotation=180);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=1, duration=5)
      annotation (extent=[-50,-30; -30,-10],
                                          rotation=270);
    annotation (Diagram, experiment(StopTime=5),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Emitter circuit

R1	1	2	10
R2	3	4	100
Q1	3	2	0	Transistor

VC1	4	0	5
VR1	1	0	dc=0 pwl(0 0 10 2)

.MODEL  Transistor	NPN
.TRAN 		0.0001 5 3
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test26a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test26b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test26c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test26d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-50,-60; -30,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-10,20; 10,40]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[20,-12; 40,12]);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[-20,-10; 0,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
      annotation (extent=[30,20; 50,40],   rotation=-90);
  equation
    connect(VR1.n, Ground2.p)
      annotation (points=[-40,-30; -40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, Ground1.p)
      annotation (points=[40,-6; 40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground3.p) annotation (points=[10,50; 0,50; 0,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Q1.B)
      annotation (points=[0,0; 20,0], style(color=3, rgbcolor={0,0,255}));
    connect(VR1.p, R1.p) annotation (points=[-40,-10; -40,0; -20,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, Q1.C)
      annotation (points=[40,20; 40,6], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VC1.p) annotation (points=[40,40; 40,50; 30,50], style(color=
            3, rgbcolor={0,0,255}));
  end test26;

  model test27

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[30,-70; 50,-50]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=4, duration=20)
      annotation (extent=[-50,-30; -30,-10],
                                          rotation=270);
    annotation (Diagram, experiment(StopTime=20),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Emitter circuit

R1	1	2	10
R2	3	4	100
R3	5	0	10
Q1	3	2	5	Transistor

VC1	4	0	5
VR1	1	0	dc=0 pwl(0 0 20 4)

.MODEL  Transistor	NPN
.TRAN 		0.0001 20 0
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test27a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test27b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test27c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test27d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-50,-70; -30,-50]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[10,40; 30,60],rotation=180);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-10,20; 10,40]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[20,-12; 40,12]);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[-20,-10; 0,10],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
      annotation (extent=[30,20; 50,40],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=10)
      annotation (extent=[30,-40; 50,-20], rotation=-90);
  equation
    connect(VR1.n, Ground2.p)
      annotation (points=[-40,-30; -40,-50], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground3.p) annotation (points=[10,50; 0,50; 0,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.n, Q1.B)
      annotation (points=[0,0; 20,0], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Q1.C)
      annotation (points=[40,20; 40,6], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VC1.p) annotation (points=[40,40; 40,50; 30,50], style(color=
            3, rgbcolor={0,0,255}));
    connect(R3.n, Ground1.p)
      annotation (points=[40,-40; 40,-50], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, R3.p)
      annotation (points=[40,-6; 40,-20], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VR1.p) annotation (points=[-20,0; -40,0; -40,-10], style(
          color=3, rgbcolor={0,0,255}));
  end test27;

  model test28

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[50,-60; 70,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=6)
      annotation (extent=[-40,10; -20,30]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(
      V=8,
      duration=10,
      offset=-4)
      annotation (extent=[20,-60; 40,-40],
                                         rotation=270);
    annotation (Diagram, experiment(StopTime=10),
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Bipolar constant current source

VC1	5	6	6
VR1	2	0	dc=-4 pwl(0 -4 10 4)

R1	8	6	0.1
R2	7	6	1K
R3	5	3	1K
R4	2	7	3K
R5	3	2	3K
R6	5	9	0.1
R7	4	0	0.001

Q1	4	3	9	Tran_PNP
Q2	4	7	8	Tran_NPN

.MODEL  Tran_NPN	NPN
.MODEL	Tran_PNP	PNP

.DC	VR1	-3.5 3.5 0.01
.TRAN 		0.0001 10 0

.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test28a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test28b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test28c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test28d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
  public
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[20,-90; 40,-70]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[30,22; 50,-2]);
    BondLib.Electrical.Analog.Spice.R R1(R=0.1)
      annotation (extent=[0,20; 20,40],    rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[0,0; 20,20],     rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1000)
      annotation (extent=[-60,-20; -40,0], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=3000)
      annotation (extent=[20,-20; 40,0],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R5(R=3000)
      annotation (extent=[-20,-40; 0,-20], rotation=0);
    BondLib.Electrical.Analog.Spice.R R6(R=0.1)
      annotation (extent=[0,40; 20,60],    rotation=0);
    BondLib.Electrical.Analog.Spice.R R7(R=0.001)
      annotation (extent=[50,-30; 70,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.Qpl Q1(Level=1)
      annotation (extent=[30,58; 50,82]);
  equation
    connect(Ground2.p, VR1.n)          annotation (points=[30,-70; 30,-65; 30,
          -60; 30,-60],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VC1.n) annotation (points=[0,30; -10,30; -10,20; -20,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, VC1.n) annotation (points=[0,10; -10,10; -10,20; -20,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.p, VC1.p) annotation (points=[-50,0; -50,20; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n, VR1.p) annotation (points=[30,-20; 30,-30; 30,-40; 30,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, R5.p) annotation (points=[-50,-20; -50,-30; -20,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(VR1.p, R5.n) annotation (points=[30,-40; 30,-30; 0,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(R6.p, R3.p) annotation (points=[0,50; -50,50; -50,0], style(color=3,
          rgbcolor={0,0,255}));
    connect(R7.n, Ground1.p)
      annotation (points=[60,-30; 60,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R4.p, Q2.B)
      annotation (points=[30,0; 30,10], style(color=3, rgbcolor={0,0,255}));
    connect(R4.p, R2.n) annotation (points=[30,0; 30,10; 20,10], style(color=3,
          rgbcolor={0,0,255}));
    connect(R7.p, Q2.C) annotation (points=[60,-10; 60,4; 50,4], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q2.E, R1.n) annotation (points=[50,16; 50,30; 20,30], style(color=3,
          rgbcolor={0,0,255}));
    connect(R7.p, Q1.C) annotation (points=[60,-10; 60,76; 50,76], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q1.E, R6.n) annotation (points=[50,64; 50,50; 20,50], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.B, R5.p) annotation (points=[30,70; -70,70; -70,-30; -20,-30],
        style(color=3, rgbcolor={0,0,255}));
  end test28;

  model test29

    annotation (Diagram, experiment(StopTime=10),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
RTL NOR gater

VC1	6	0	3.6
VT1	1	0	dc=0 PULSE(0 1 1 0.01 0.01 2 4)
VT2	3	0	dc=0 PULSE(0 1 0 0.01 0.01 1 2)

R1	1	2	3.6K
R2	3	4	3.6K
R3	5	6	1.5K

Q1	5	2	0	Tran_NPN
Q2	5	4	0	Tran_NPN


.MODEL  Tran_NPN	NPN
.TRAN 		0.001 10
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test29a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test29b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test29c.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[20,-60; 40,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-70,-60; -50,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-40,-60; -20,-40]);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=1,
      rising=0.01,
      width=2,
      falling=0.01,
      period=4,
      offset=0,
      startTime=1) annotation (extent=[-70,-30; -50,-10],
                                                        rotation=270);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=1,
      rising=0.01,
      falling=0.01,
      offset=0,
      width=1,
      period=2,
      startTime=0) annotation (extent=[-40,-30; -20,-10],
                                                        rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[40,40; 60,60]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[60,-60; 80,-40]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3.6)
      annotation (extent=[60,-30; 80,-10],
                                         rotation=270);
    BondLib.Electrical.Analog.Spice.R R2(R=3600)
      annotation (extent=[-20,0; 0,20],    rotation=0);
    BondLib.Electrical.Analog.Spice.R R1(R=3600)
      annotation (extent=[-20,30; 0,50],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1500)
      annotation (extent=[40,14; 60,34],   rotation=0);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[10,-2; 30,22]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[10,52; 30,28]);
  equation
    connect(VT1.n, Ground2.p)
      annotation (points=[-60,-30; -60,-40], style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n, Ground3.p)
      annotation (points=[-30,-30; -30,-35; -30,-35; -30,-40],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground5.p)
      annotation (points=[70,-30; 70,-40],
                                         style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VT1.p) annotation (points=[-20,40; -60,40; -60,-10], style(color=
            3, rgbcolor={0,0,255}));
    connect(R2.p, VT2.p) annotation (points=[-20,10; -30,10; -30,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n, VC1.p) annotation (points=[60,24; 70,24; 70,-10], style(color=
           3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[10,40; 0,40], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.E, Ground4.p) annotation (points=[30,46; 30,70; 50,70; 50,60],
        style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R3.p) annotation (points=[30,34; 30,24; 40,24], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q2.B, R2.n)
      annotation (points=[10,10; 0,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.C, Q1.C)
      annotation (points=[30,16; 30,34], style(color=3, rgbcolor={0,0,255}));
    connect(Q2.E, Ground1.p)
      annotation (points=[30,4; 30,-40], style(color=3, rgbcolor={0,0,255}));
  end test29;

  model test30

    annotation (Diagram(Ellipse(extent=[9,11; 11,9],  style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
                        Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using DASSL integrator:"),                      Line(points=[-84,80;
              84,80],         style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=10),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Current level in transistor diode

VR1	2	0	dc=-4 pwl(0 -4 10 4)

R1	8	0	10
R2	2	1	1K
R3	10	2	5K
R4	12	0	10

Q1	1	1	8	Tran_NPN
Q2	10	1	12	Tran_NPN

.MODEL  Tran_NPN	NPN
.TRAN 		0.0001 10 0
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test30a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test30b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> solution gets stuck at time</b></font> <b>t = 5</b> <font color=blue><b>due to chattering.  I got the following message after interrupting the simulation:</b></font> <p>
<img src=\"../Images/test30c.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[30,-80; 50,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-50,-80; -30,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[0,-80; 20,-60]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(
      V=8,
      duration=10,
      offset=-4)
      annotation (extent=[-50,-30; -30,-10],
                                           rotation=270);
    BondLib.Electrical.Analog.Spice.R R3(R=5000)
      annotation (extent=[30,30; 50,50],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[0,-50; 20,-30],  rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[0,30; 20,50],    rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=10)
      annotation (extent=[30,-50; 50,-30], rotation=-90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[20,-2; 40,22]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-10,-22; 10,2]);
  equation
    connect(VR1.n, Ground3.p)          annotation (points=[-40,-30; -40,-60], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground4.p) annotation (points=[10,-50; 10,-60], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R4.n, Ground1.p) annotation (points=[40,-50; 40,-60], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.p, VR1.p) annotation (points=[10,50; 10,60; -40,60; -40,-10],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R3.p, R2.p) annotation (points=[40,50; 40,60; 10,60; 10,50], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q2.C, R3.n) annotation (points=[40,16; 40,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q2.E, R4.p) annotation (points=[40,4; 40,-30],  style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.E, R1.p) annotation (points=[10,-16; 10,-30],style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.C, R2.n) annotation (points=[10,-4; 10,30],       style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.C, Q2.B) annotation (points=[10,-4; 10,10; 20,10],style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.B, Q1.C) annotation (points=[-10,-10; -20,-10; -20,10; 10,10; 10,
          -4],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
  end test30;

  model test30_II

    annotation (Diagram(Ellipse(extent=[9,11; 11,9],  style(
            color=3,
            rgbcolor={0,0,255},
            fillColor=3,
            rgbfillColor={0,0,255})),
                        Text(
          extent=[-92,100; 92,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using Radau-IIa integrator:"),                  Line(points=[-90,80;
              90,80],         style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=10, Algorithm="Radau"),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>Switching the integrator from</b></font> <b>DASSL</b> <font color=blue><b>to</b></font> <b>Radau-IIa</b><font color=blue><b> solves the problem:</b></font> <p>
<img src=\"../Images/test30d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test30e.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[30,-80; 50,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-50,-80; -30,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[0,-80; 20,-60]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(
      V=8,
      duration=10,
      offset=-4)
      annotation (extent=[-50,-30; -30,-10],
                                           rotation=270);
    BondLib.Electrical.Analog.Spice.R R3(R=5000)
      annotation (extent=[30,30; 50,50],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R1(R=10)
      annotation (extent=[0,-50; 20,-30],  rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[0,30; 20,50],    rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=10)
      annotation (extent=[30,-50; 50,-30], rotation=-90);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1)
      annotation (extent=[20,-2; 40,22]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1)
      annotation (extent=[-10,-22; 10,2]);
  equation
    connect(VR1.n, Ground3.p)          annotation (points=[-40,-30; -40,-60], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground4.p) annotation (points=[10,-50; 10,-60], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R4.n, Ground1.p) annotation (points=[40,-50; 40,-60], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R2.p, VR1.p) annotation (points=[10,50; 10,60; -40,60; -40,-10],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(R3.p, R2.p) annotation (points=[40,50; 40,60; 10,60; 10,50], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q2.C, R3.n) annotation (points=[40,16; 40,30], style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q2.E, R4.p) annotation (points=[40,4; 40,-30],  style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.E, R1.p) annotation (points=[10,-16; 10,-30],style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.C, R2.n) annotation (points=[10,-4; 10,30],       style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.C, Q2.B) annotation (points=[10,-4; 10,10; 20,10],style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
    connect(Q1.B, Q1.C) annotation (points=[-10,-10; -20,-10; -20,10; 10,10; 10,
          -4],
        style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=3,
        rgbfillColor={0,0,255},
        fillPattern=1));
  end test30_II;

  model test31

    BondLib.Electrical.Analog.Sources.ExpSineVoltage VE1(
      V=2,
      freqHz=0.5,
      damping=0.25,
      offset=2)
      annotation (extent=[-50,-20; -30,0],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-50,-60; -30,-40]);
    annotation (Diagram, experiment(StopTime=10, Tolerance=1e-010),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simulation Wien-Robinson-Bridge

VE1	1	0	dc=2 sin(2 2 0.5 0.0 0.250)

R1	1	4	200
R2	0	4	100
R3	1	2	1K
R4	0	3	1K
C1	2	3	100
C2	0	3	100

.TRAN 		0.0001 10
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test31a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test31b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results (with default steady-state initialization): <p>
<img src=\"../Images/test31d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> simulation is by default too inaccurate in this case.  In order to obtain decent results, I had to tighten the accuracy from a value of</b></font> <b>0.0001</b> <font color=blue><b>to a value of</b></font> <b>1e-10</b><font color=blue><b>.</b></font> <p>

<font color=blue><b>The default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) works correctly on this example.  This is not further surprising, since the circuit is linear.  Newton iteration converges on any linear system in a single step.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-20,-60; 0,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[30,-60; 50,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=200)
      annotation (extent=[-20,20; 0,40],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
      annotation (extent=[-20,-30; 0,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=1000)
      annotation (extent=[20,40; 40,60],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=1000)
      annotation (extent=[30,-30; 50,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=100)
                                         annotation (extent=[20,10; 40,30], rotation=270);
    BondLib.Electrical.Analog.Spice.C C2(C=100)
                                         annotation (extent=[10,-30; 30,-10],
                                                                            rotation=270);
  equation
    connect(VE1.n, Ground1.p)
      annotation (points=[-40,-20; -40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VE1.p) annotation (points=[-10,40; -10,70; -40,70; -40,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, R1.n) annotation (points=[-10,-10; -10,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[-10,-30; -10,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.p, R1.p) annotation (points=[30,60; 30,70; -10,70; -10,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground4.p)
      annotation (points=[40,-30; 40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R3.n) annotation (points=[30,30; 30,35; 30,35; 30,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.n, R4.p) annotation (points=[30,10; 30,0; 40,0; 40,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(C2.n, Ground3.p) annotation (points=[20,-30; 20,-35; 20,-35; 20,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, C1.n) annotation (points=[20,-10; 20,0; 30,0; 30,10], style(
          color=3, rgbcolor={0,0,255}));
  end test31;

  model test31_II

    BondLib.Electrical.Analog.Sources.ExpSineVoltage VE1(
      V=2,
      freqHz=0.5,
      damping=0.25,
      offset=2)
      annotation (extent=[-50,-20; -30,0],  rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-50,-60; -30,-40]);
    annotation (Diagram, experiment(StopTime=10, Tolerance=1e-010),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>BondLib</b></font> simulation results without default steady-state iteration by manually copying the correct capacitive voltages over from <font color=red><b>PSpice</b></font> to <font color=red><b>BondLib</b></font>: <p>
<img src=\"../Images/test31c.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-20,-60; 0,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[10,-60; 30,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[30,-60; 50,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=200)
      annotation (extent=[-20,20; 0,40],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=100)
      annotation (extent=[-20,-30; 0,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=1000)
      annotation (extent=[20,40; 40,60],   rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=1000)
      annotation (extent=[30,-30; 50,-10], rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=100, u0=2)
                                         annotation (extent=[20,10; 40,30], rotation=270);
    BondLib.Electrical.Analog.Spice.C C2(C=100, u0=0)
                                         annotation (extent=[10,-30; 30,-10],
                                                                            rotation=270);
  equation
    connect(VE1.n, Ground1.p)
      annotation (points=[-40,-20; -40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, VE1.p) annotation (points=[-10,40; -10,70; -40,70; -40,0], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, R1.n) annotation (points=[-10,-10; -10,20], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[-10,-30; -10,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.p, R1.p) annotation (points=[30,60; 30,70; -10,70; -10,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground4.p)
      annotation (points=[40,-30; 40,-40], style(color=3, rgbcolor={0,0,255}));
    connect(C1.p, R3.n) annotation (points=[30,30; 30,35; 30,35; 30,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.n, R4.p) annotation (points=[30,10; 30,0; 40,0; 40,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(C2.n, Ground3.p) annotation (points=[20,-30; 20,-35; 20,-35; 20,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(C2.p, C1.n) annotation (points=[20,-10; 20,0; 30,0; 30,10], style(
          color=3, rgbcolor={0,0,255}));
  end test31_II;

model test32
  model irf7832

    BondLib.Electrical.Analog.Spice.Mn Mn1(
      Level=1,
      VT0=2.3855,
      KP=398.702,
      LAMBDA=0.0703151,
      L=100e-6,
      W=100e-6,
      CGD0=1.0673e-7,
      CGS0=4.00534e-5,
      ISS=1e-32)       annotation (extent=[20,-40; 40,-20]);
    annotation (Diagram(
        Text(
          extent=[0,-36; 16,-44],
          style(color=3, rgbcolor={0,0,255}),
          string="7"),
        Text(
          extent=[-34,-68; -18,-76],
          style(color=3, rgbcolor={0,0,255}),
          string="2"),
        Text(
          extent=[54,-18; 70,-26],
          style(color=3, rgbcolor={0,0,255}),
          string="9"),
        Text(
          extent=[38,-32; 54,-40],
          style(color=3, rgbcolor={0,0,255}),
          string="8"),
        Text(
          extent=[50,-58; 66,-66],
          style(color=3, rgbcolor={0,0,255}),
          string="3"),
        Text(
          extent=[46,-98; 62,-106],
          style(color=3, rgbcolor={0,0,255}),
          string="1"),
        Text(
          extent=[-34,58; -18,50],
          style(color=3, rgbcolor={0,0,255}),
          string="5"),
        Text(
          extent=[-12,92; 4,84],
          style(color=3, rgbcolor={0,0,255}),
          string="4"),
        Text(
          extent=[-14,34; 2,26],
          style(color=3, rgbcolor={0,0,255}),
          string="10"),
        Text(
          extent=[-94,38; -78,30],
          style(color=3, rgbcolor={0,0,255}),
            string="11")), Icon(
          Rectangle(extent=[-100,100; 100,-80], style(
              color=3,
              rgbcolor={0,0,255},
              thickness=2)),
          Text(
            extent=[-106,98; -54,58],
            style(color=3, rgbcolor={0,0,255}),
            string="1"),
          Text(
            extent=[-106,36; -54,-4],
            style(color=3, rgbcolor={0,0,255}),
            string="2"),
          Text(
            extent=[-106,-30; -54,-70],
            style(color=3, rgbcolor={0,0,255}),
            string="3"),
          Text(
            extent=[-36,62; 106,-34],
            style(color=3, rgbcolor={0,0,255}),
            string="irf7832")));
    BondLib.Electrical.Analog.Spice.D D1(
      IS=1.32561e-13,
      RS=0.00314535,
      N=0.864627,
      TT=1e-7,
      CJ=2.10017e-9,
      EG=1,
      XTI=1,
      FC=0.5,
      BV=30,
      IBV=0.00025,
      M=1)                               annotation (extent=[60,-90; 80,-70],rotation=270);
    BondLib.Electrical.Analog.Spice.D D2(
      M=1,
      IS=1e-32,
      N=50,
      CJ=6.59338e-10,
        FC=1e-8)                         annotation (extent=[-10,60; 10,80], rotation=270);
    BondLib.Electrical.Analog.Spice.D D3(
      IS=1e-10,
      N=0.4,
        RS=3e-6)           annotation (extent=[-40,60; -20,80],rotation=270);

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-60,60; -40,80]);
    BondLib.Electrical.Analog.Basic.CCC CCC1(gain=-1)
                                             annotation (extent=[40,40; 20,60], rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=0)
      annotation (extent=[20,80; 40,100]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[40,70; 60,90]);
    BondLib.Electrical.Analog.Basic.VCV VCV1(gain=1)
                                             annotation (extent=[10,10; -10,30]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-30,-20; -10,0]);
    BondLib.Electrical.Analog.Basic.CCC CCC2(gain=-1)
                                             annotation (extent=[-68,-20; -88,0],
                                                                                rotation=270);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC2(V=0)
      annotation (extent=[-88,2; -68,22]);
    BondLib.Electrical.Analog.Spice.D D4(
      IS=1e-10,
      N=0.4)               annotation (extent=[-40,4; -20,24], rotation=270);
      Modelica.Electrical.Analog.Interfaces.NegativePin n1
        annotation (extent=[-132,68; -112,88]);
      Modelica.Electrical.Analog.Interfaces.NegativePin n2
        annotation (extent=[-132,6; -112,26]);
      Modelica.Electrical.Analog.Interfaces.NegativePin n3
        annotation (extent=[-132,-60; -112,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=0.00283146)
      annotation (extent=[40,-60; 60,-40], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R2(R=1e6)
      annotation (extent=[30,-90; 50,-70], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R3(R=0.0001)
      annotation (extent=[70,-60; 90,-40], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R4(R=1.75641)
      annotation (extent=[-30,-60; -10,-40],
                                           rotation=-90);
    BondLib.Electrical.Analog.Spice.R R5(R=1)
      annotation (extent=[-30,34; -10,54], rotation=-90);
    BondLib.Electrical.Analog.Spice.R R6(R=1)
      annotation (extent=[-60,4; -40,24],  rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=1.95923e-9)
                                         annotation (extent=[-80,20; -60,40],
                                                                            rotation=0);
  equation
    connect(Mn1.B, Mn1.S)
      annotation (points=[40,-30; 40,-35],
                                     style(color=3, rgbcolor={0,0,255}));
    connect(D3.p, Ground1.p) annotation (points=[-30,80; -30,90; -50,90; -50,80],
                                                                     style(color=
            3, rgbcolor={0,0,255}));
      connect(D2.n, D3.n)
        annotation (points=[-1.83691e-015,60; -30,60],
                                           style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, VCV1.n2)
      annotation (points=[-20,0; -20,15; -10,15],
                                         style(color=3, rgbcolor={0,0,255}));
      connect(VC1.n, Ground2.p)
        annotation (points=[40,90; 50,90], style(color=3, rgbcolor={0,0,255}));
      connect(VC1.p, D2.p)              annotation (points=[20,90; 1.83691e-015,
            90; 1.83691e-015,80],
          style(color=3, rgbcolor={0,0,255}));
      connect(VC1.p, CCC1.p1)              annotation (points=[20,90; 20,60; 25,
            60], style(color=3, rgbcolor={0,0,255}));
      connect(CCC1.n1, VC1.n)              annotation (points=[35,60; 40,60; 40,
            90], style(color=3, rgbcolor={0,0,255}));
      connect(CCC2.p2, Mn1.G) annotation (points=[-83,-20; -82,-20; -82,-35; 20,
            -35], style(color=3, rgbcolor={0,0,255}));
      connect(CCC2.n2, Mn1.D) annotation (points=[-73,-20; 40,-20; 40,-25], style(
            color=3, rgbcolor={0,0,255}));
      connect(CCC2.n1, VC2.n)              annotation (points=[-73,1.77636e-015;
            -68,1.77636e-015; -68,12],
                     style(color=3, rgbcolor={0,0,255}));
      connect(CCC2.p1, VC2.p)              annotation (points=[-83,
            -1.77636e-015; -88,-1.77636e-015; -88,12],
                     style(color=3, rgbcolor={0,0,255}));
      connect(D4.p, Ground3.p) annotation (points=[-30,24; -30,26; -20,26; -20,
            0],
          style(color=3, rgbcolor={0,0,255}));
      connect(CCC1.n2, VCV1.p1) annotation (points=[35,40; 40,40; 40,25; 10,25],
          style(color=3, rgbcolor={0,0,255}));
      connect(CCC1.n2, Mn1.D) annotation (points=[35,40; 40,40; 40,-25], style(
            color=3, rgbcolor={0,0,255}));
      connect(CCC1.p2, Mn1.G) annotation (points=[25,40; 20,40; 20,-35], style(
            color=3, rgbcolor={0,0,255}));
      connect(CCC1.p2, VCV1.n1) annotation (points=[25,40; 20,40; 20,15; 10,15],
          style(color=3, rgbcolor={0,0,255}));
      connect(D1.p, n3) annotation (points=[70,-70; 70,-66; 10,-66; 10,-84;
            -106,-84; -106,-50; -122,-50], style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S, R1.p) annotation (points=[40,-35; 40,-40; 50,-40], style(
            color=3, rgbcolor={0,0,255}));
      connect(R1.n, D1.p) annotation (points=[50,-60; 50,-66; 70,-66; 70,-70],
          style(color=3, rgbcolor={0,0,255}));
      connect(D1.n, n1) annotation (points=[70,-90; 70,-96; -96,-96; -96,78;
            -122,78], style(color=3, rgbcolor={0,0,255}));
      connect(R2.p, R1.n) annotation (points=[40,-70; 40,-66; 50,-66; 50,-60],
          style(color=3, rgbcolor={0,0,255}));
      connect(R2.n, D1.n) annotation (points=[40,-90; 40,-96; 70,-96; 70,-90],
          style(color=3, rgbcolor={0,0,255}));
      connect(R3.p, Mn1.D) annotation (points=[80,-40; 80,-25; 40,-25], style(
            color=3, rgbcolor={0,0,255}));
      connect(R3.n, D1.n) annotation (points=[80,-60; 80,-96; 70,-96; 70,-90],
          style(color=3, rgbcolor={0,0,255}));
      connect(R4.p, Mn1.G) annotation (points=[-20,-40; -20,-35; 20,-35], style(
            color=3, rgbcolor={0,0,255}));
      connect(R4.n, n2) annotation (points=[-20,-60; -20,-76; -102,-76; -102,16;
            -122,16], style(color=3, rgbcolor={0,0,255}));
      connect(R5.p, D3.n) annotation (points=[-20,54; -20,60; -30,60], style(
            color=3, rgbcolor={0,0,255}));
      connect(R5.n, VCV1.p2) annotation (points=[-20,34; -20,30; -10,30; -10,25],
          style(color=3, rgbcolor={0,0,255}));
      connect(R6.n, CCC2.n1) annotation (points=[-50,4; -50,1.77636e-015; -73,
            1.77636e-015], style(color=3, rgbcolor={0,0,255}));
      connect(R6.n, D4.n) annotation (points=[-50,4; -50,0; -30,0; -30,4],
          style(color=3, rgbcolor={0,0,255}));
      connect(R6.p, R5.n) annotation (points=[-50,24; -50,30; -20,30; -20,34],
          style(color=3, rgbcolor={0,0,255}));
      connect(C1.n, R6.p) annotation (points=[-60,30; -50,30; -50,24], style(
            color=3, rgbcolor={0,0,255}));
      connect(C1.p, VC2.p) annotation (points=[-80,30; -88,30; -88,12], style(
            color=3, rgbcolor={0,0,255}));
  end irf7832;

    annotation (Diagram, experiment,
      Documentation(info="<html>
<font color=blue><b>Since I couldn't get subcircuits to work in my version of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b> yet, I only show the simulation results obtained with</b></font> <font color=red><b>Spice3g</b></font><font color=blue><b>.</b></font> <p>

<font color=red><b>Spice3g</b></font> simulation results: <p>
<img src=\"../Images/test32a.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> model dies at compile time with the error message:</b></font> <p>
<img src=\"../Images/test32b.png\"> <p>

<font color=blue><b>This problem needs to be analyzed further.</b></font>
</html>"),
      Icon(
      Ellipse(extent=[-80,80; 80,-80], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=1,
          rgbfillColor={255,0,0},
          fillPattern=1)),
      Ellipse(extent=[-60,60; 60,-60], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1)),
      Rectangle(extent=[-70,10; 70,-10], style(
          color=1,
          rgbcolor={255,0,0},
          fillColor=1,
          rgbfillColor={255,0,0},
          fillPattern=1)),
      Text(
        extent=[-80,80; 80,-80],
        string="!",
        style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1))));
    irf7832 irf7832_1 annotation (extent=[60,55; 80,75]);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-90,16; -70,36]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=12)
      annotation (extent=[-70,-50; -50,-30],rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-70,-80; -50,-60]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-50,10; -30,30]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[-30,10; -10,30]);
    irf7832 irf7832_2 annotation (extent=[60,-38; 80,-18]);
    BondLib.Electrical.Analog.Spice.Qnv Q1(
      BF=213.3,
      BR=5.005,
      IS=1.41e-14,
      ISC=0,
      ISE=0,
      NC=2,
      NE=1.511,
      VAF=100,
      IKF=0.744,
      IKR=0,
      RB=10,
      RC=0.7,
      CJC=1.56e-11,
      MJC=0.3621,
      VJC=0.7455,
      CJE=5.528e-11,
      MJE=0.3,
      VJE=0.7433,
      FC=0.5,
      TF=8.154e-10,
      TR=8.152e-10,
      XTI=3,
      XTB=1.501,
      EG=1.11)                               annotation (extent=[8,40; 32,60],   rotation=90);
    BondLib.Electrical.Analog.Spice.Z Z1(
      RS=1,
      TT=1e-9,
      EG=0.69,
      XTI=2,
      BV=10,
      IS=1e-12,
      CJ=1e-12) annotation (extent=[-30,40; -10,60], rotation=90);
    BondLib.Electrical.Analog.Spice.Z Z2(
      RS=1,
      TT=1e-9,
      EG=0.69,
      XTI=2,
      IS=1e-12,
      CJ=1e-12,
      BV=14) annotation (extent=[-20,14; 0,-6], rotation=180);
  BondLib.Electrical.Analog.Spice.R R1(R=1e4)
    annotation (extent=[-70,40; -50,60], rotation=-90);
  BondLib.Electrical.Analog.Spice.R R2(R=12e4)
    annotation (extent=[-50,40; -30,60], rotation=-90);
  BondLib.Electrical.Analog.Spice.R R3(R=1)
    annotation (extent=[-40,-30; -20,-10],
                                         rotation=0);
  BondLib.Electrical.Analog.Spice.R R4(R=1000)
    annotation (extent=[0,-30; 20,-10],  rotation=0);
  BondLib.Electrical.Analog.Spice.R R5(R=1e4)
    annotation (extent=[10,10; 30,30],   rotation=-90);
equation
    connect(Ground1.p, irf7832_1.n1) annotation (points=[-80,36; -80,72.8; 57.8,
          72.8], style(color=3, rgbcolor={0,0,255}));
    connect(Ground2.p, VC1.n)
      annotation (points=[-60,-60; -60,-50], style(color=3, rgbcolor={0,0,255}));
    connect(Z1.p, Ground4.p)
      annotation (points=[-20,40; -20,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, irf7832_1.n2) annotation (points=[14,60; 14,66.6; 57.8,66.6], style(
          color=3, rgbcolor={0,0,255}));
    connect(irf7832_1.n3, Q1.E)
      annotation (points=[57.8,60; 26,60], style(color=3, rgbcolor={0,0,255}));
    connect(Z1.n, irf7832_1.n2) annotation (points=[-20,60; -20,66.6; 57.8,66.6],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, irf7832_1.n2) annotation (points=[-60,60; -60,66.6; 57.8,66.6],
        style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, VC1.p) annotation (points=[-60,40; -60,-30], style(color=3,
          rgbcolor={0,0,255}));
    connect(Z2.n, VC1.p) annotation (points=[-20,4; -60,4; -60,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(irf7832_1.n2, irf7832_2.n2) annotation (points=[57.8,66.6; 52,66.6;
          52,-26.4; 57.8,-26.4], style(color=3, rgbcolor={0,0,255}));
    connect(irf7832_1.n3, irf7832_2.n3) annotation (points=[57.8,60; 46,60; 46,
          -33; 57.8,-33], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground3.p)
      annotation (points=[-40,40; -40,30], style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, irf7832_1.n2) annotation (points=[-40,60; -40,66.6; 57.8,66.6],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.p, Q1.B)
      annotation (points=[20,30; 20,40], style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Z2.p) annotation (points=[20,10; 20,4; 0,4], style(color=3,
          rgbcolor={0,0,255}));
    connect(VC1.p, R3.p) annotation (points=[-60,-30; -60,-20; -40,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.p, R3.n)
      annotation (points=[0,-20; -20,-20], style(color=3, rgbcolor={0,0,255}));
    connect(irf7832_2.n1, R4.n) annotation (points=[57.8,-20.2; 39.9,-20.2;
          39.9,-20; 20,-20], style(color=3, rgbcolor={0,0,255}));
end test32;

  model test33

    annotation (Diagram, experiment(StopTime=10),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simple Differential Pair

VC1 8 0 -12
VC2 7 0 12
VT1 1 0 pwl (0 0 1 10 2 2 3 8 4 4 5 6 6 5 7 0 10 10)

R1 1 2 1K
R2 6 0 1K
R3 7 3 10K
R4 7 5 10K
R5 4 8 10K

Q1 3 2 4 MOD1
Q2 5 6 4 MOD1

.MODEL MOD1 NPN BF=50 VAF=50 IS=1.E-12 RB=100 CJC=.5PF TF=.6NS
.TRAN 0.001 10 0
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test33a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test33b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test33c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test33e.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-80,-60; -60,-40]);
    BondLib.Electrical.Analog.Sources.TableVoltage TableVoltage1(table=[0,0; 1,
          10; 2,2; 3,8; 4,4; 5,6; 6,5; 7,0; 10,10])
      annotation (extent=[-100,-10; -80,10],
                                           rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-100,-60; -80,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-20; 60,0]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-12)
      annotation (extent=[26,0; 46,20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC2(V=12)
      annotation (extent=[64,0; 84,20]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[80,-60; 100,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[-60,20; -40,40], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[-60,-20; -40,0], rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1e4)
      annotation (extent=[20,40; 40,60],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R4(R=1e4)
      annotation (extent=[20,-40; 40,-20], rotation=0);
    BondLib.Electrical.Analog.Spice.R R5(R=1e4)
      annotation (extent=[0,0; 20,20],     rotation=0);
    BondLib.Electrical.Analog.Spice.Qnv Q1(
      BF=50,
      IS=1e-12,
      CJC=0.5e-12,
      VSUB=-12,
      VAF=50,
      RB=100,
      TF=0.6e-9,
      Level=1)
      annotation (extent=[-30,18; -10,42]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(
      BF=50,
      IS=1e-12,
      CJC=0.5e-12,
      VSUB=-12,
      IKF=50,
      RB=100,
      TF=0.6e-9,
      Level=1)
      annotation (extent=[-30,2; -10,-22]);
  equation
    connect(Ground2.p, TableVoltage1.n) annotation (points=[-90,-40; -90,-10],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, VC1.n)              annotation (points=[50,0; 50,10; 46,
          10], style(color=3, rgbcolor={0,0,255}));
    connect(VC2.n, Ground4.p)              annotation (points=[84,10; 90,10; 90,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, TableVoltage1.p) annotation (points=[-60,30; -90,30; -90,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[-60,-10; -70,-10; -70,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, VC2.p) annotation (points=[40,50; 60,50; 60,10; 64,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n, VC2.p) annotation (points=[40,-30; 60,-30; 60,10; 64,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, VC1.p)
      annotation (points=[20,10; 26,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[-30,30; -40,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R3.p) annotation (points=[-10,36; -10,50; 20,50], style(color=
           3, rgbcolor={0,0,255}));
    connect(Q1.E, R5.p) annotation (points=[-10,24; -10,10; 0,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q2.B, R2.n) annotation (points=[-30,-10; -40,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q2.E, R5.p) annotation (points=[-10,-4; -10,10; 0,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q2.C, R4.p) annotation (points=[-10,-16; -10,-30; 20,-30], style(
          color=3, rgbcolor={0,0,255}));
  end test33;

  model test33_II

    annotation (Diagram, experiment(StopTime=10),
      Documentation(info="<html>
Since I didn't introduce any temperature dependence on the components, the electrical results are exactly the same as for <b>test33</b>.  The heat flow into the package is: <p>
<img src=\"../Images/test33d.png\">
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-80,-60; -60,-40]);
    BondLib.Electrical.Analog.Sources.TableVoltage TableVoltage1(table=[0,0; 1,
          10; 2,2; 3,8; 4,4; 5,6; 6,5; 7,0; 10,10])
      annotation (extent=[-100,-10; -80,10],
                                           rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-100,-60; -80,-40]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-20; 60,0]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-12)
      annotation (extent=[26,0; 46,20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC2(V=12)
      annotation (extent=[64,0; 84,20]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[80,-60; 100,-40]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[-60,20; -40,40], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[-60,-20; -40,0], rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1e4)
      annotation (extent=[20,40; 40,60],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R4(R=1e4)
      annotation (extent=[20,-40; 40,-20], rotation=0);
    BondLib.Electrical.Analog.Spice.R R5(R=1e4)
      annotation (extent=[0,0; 20,20],     rotation=0);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1,
      BF=50,
      IS=1e-12,
      CJC=0.5e-12,
      VSUB=-12,
      VAF=50,
      RB=100,
      TF=0.6e-9)
      annotation (extent=[-30,18; -10,42]);
    BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1,
      BF=50,
      IS=1e-12,
      CJC=0.5e-12,
      VSUB=-12,
      VAF=50,
      RB=100,
      TF=0.6e-9)
      annotation (extent=[-30,2; -10,-22]);
  BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
    annotation (extent=[10,-70; 30,-50], rotation=0);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
    annotation (extent=[-20,-70; 0,-90]);
  BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC2(C=1)
    annotation (extent=[40,-70; 60,-90]);
  equation
    connect(Ground2.p,TableVoltage1. n) annotation (points=[-90,-40; -90,-10],
        style(color=3, rgbcolor={0,0,255}));
    connect(Ground3.p, VC1.n)              annotation (points=[50,0; 50,10; 46,
          10], style(color=3, rgbcolor={0,0,255}));
    connect(VC2.n, Ground4.p)              annotation (points=[84,10; 90,10; 90,
          -40], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, TableVoltage1.p) annotation (points=[-60,30; -90,30; -90,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.p, Ground1.p) annotation (points=[-60,-10; -70,-10; -70,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, VC2.p) annotation (points=[40,50; 60,50; 60,10; 64,10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n, VC2.p) annotation (points=[40,-30; 60,-30; 60,10; 64,10],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, VC1.p)
      annotation (points=[20,10; 26,10], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[-30,30; -40,30], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R3.p) annotation (points=[-10,36; -10,50; 20,50], style(color=
           3, rgbcolor={0,0,255}));
    connect(Q1.E, R5.p) annotation (points=[-10,24; -10,10; 0,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q2.B, R2.n) annotation (points=[-30,-10; -40,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q2.E, R5.p) annotation (points=[-10,-4; -10,10; 0,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q2.C, R4.p) annotation (points=[-10,-16; -10,-30; 20,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(Q1.S, Q2.S)
      annotation (points=[-30,24; -30,-4], style(color=2, rgbcolor={0,255,0}));
    connect(Q2.S, VC1.p) annotation (points=[-30,-4; -30,6; 0,6; 0,-10; 26,-10;
          26,10], style(color=2, rgbcolor={0,255,0}));
    connect(Q1.heatPort, Q2.heatPort)
      annotation (points=[-20,18; -20,2], style(color=42, rgbcolor={191,0,0}));
    connect(R1.heatPort, Q1.heatPort) annotation (points=[-50,20; -50,12; -20,
          12; -20,18], style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, R1.heatPort) annotation (points=[-50,-20; -50,-26; -66,
          -26; -66,12; -50,12; -50,20], style(color=42, rgbcolor={191,0,0}));
    connect(R2.heatPort, R4.heatPort) annotation (points=[-50,-20; -50,-40; 30,
          -40], style(color=42, rgbcolor={191,0,0}));
    connect(R5.heatPort, R4.heatPort) annotation (points=[10,0; 10,-40; 30,-40],
        style(color=42, rgbcolor={191,0,0}));
    connect(R3.heatPort, Q1.heatPort) annotation (points=[30,40; 0,40; 0,60;
          -34,60; -34,12; -20,12; -20,18], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_b, ThC2.port) annotation (points=[31,-60; 50,-60; 50,
          -70], style(color=42, rgbcolor={191,0,0}));
    connect(ThCond1.port_a, ThC1.port) annotation (points=[9,-60; -10,-60; -10,
          -70], style(color=42, rgbcolor={191,0,0}));
    connect(ThC1.port, R4.heatPort) annotation (points=[-10,-70; -10,-40; 30,
          -40], style(color=42, rgbcolor={191,0,0}));
  end test33_II;

  model test34

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-40; -50,-20]);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=2e-9,
      width=30e-9,
      falling=2e-9,
      nperiod=1,
      offset=0,
      startTime=2e-9)
      annotation (extent=[-70,-10; -50,10],
                                          rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[0,-40; 20,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[40,-10; 60,10],
                                       rotation=270);
    annotation (Diagram, experiment(StopTime=1e-007),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simple RTL Inverter

VC1 4 0 5
VT1 1 0 PULSE 0 5 2NS 2NS 2NS 30NS

R1 1 2 10K
R2 3 4 1K

Q1 3 2 0 Q1

.MODEL Q1 NPN BF=20 RB=100 TF=.1NS CJC=2PF
.TRAN 1NS 100NS
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test34a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test34b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test34c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <font color=red><b>BondLib</b></font><font color=blue><b> simulation results look quite different.  The difference is caused by the missing initial conditions on the capacitors that are internal to the BJT model.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/test34e.png\"> <p>

<font color=blue><b>A quantitative comparison with</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>still reveals mild differences:</b></font> <p>
<img src=\"../Images/test34f.png\"> <p>

<font color=blue><b>These differences are caused by differences in the steady-state initialization algorithms used by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  Whereas</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>only initializes the</b></font> <b>nodeset</b><font color=blue><b>, i.e., the potentials of all nodes of the top-level circuit, ignoring what happens inside the transistors,</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>initializes all state variables, including those internal to the transistors.  Consequently are the simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>more accurate than those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Spice.R R1(R=1e4)
      annotation (extent=[-40,10; -20,30], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[20,30; 40,50],   rotation=0);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1,
      BF=20,
      TF=0.1e-9,
      CJC=2e-12,
      RB=100)
      annotation (extent=[-10,8; 10,32]);
  equation
    connect(VC1.n, Ground3.p)
      annotation (points=[50,-10; 50,-20], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p)               annotation (points=[-60,-10; -60,
          -20], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p, R1.p) annotation (points=[-60,10; -60,20; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n, VC1.p) annotation (points=[40,40; 50,40; 50,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q1.B, R1.n)
      annotation (points=[-10,20; -20,20], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C, R2.p) annotation (points=[10,26; 10,40; 20,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.E, Ground2.p)
      annotation (points=[10,14; 10,-20], style(color=3, rgbcolor={0,0,255}));
  end test34;

  model test34_II

    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-70,-40; -50,-20]);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=2e-9,
      width=30e-9,
      falling=2e-9,
      offset=0,
      startTime=2e-9,
      period=1e-7)
      annotation (extent=[-70,-10; -50,10],
                                          rotation=270);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[0,-40; 20,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[40,-40; 60,-20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[40,-10; 60,10],
                                       rotation=270);
    BondLib.Electrical.Analog.Spice.R R1(R=1e4)
      annotation (extent=[-40,10; -20,30], rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[20,30; 40,50],   rotation=0);
    BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1,
      BF=20,
      TF=0.1e-9,
      CJC=2e-12,
      RB=100)
      annotation (extent=[-10,8; 10,32]);
  equation
    connect(VC1.n,Ground3. p)
      annotation (points=[50,-10; 50,-20], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n,Ground1. p)               annotation (points=[-60,-10; -60,
          -20], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p,R1. p) annotation (points=[-60,10; -60,20; -40,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n,VC1. p) annotation (points=[40,40; 50,40; 50,10], style(color=
            3, rgbcolor={0,0,255}));
    connect(Q1.B,R1. n)
      annotation (points=[-10,20; -20,20], style(color=3, rgbcolor={0,0,255}));
    connect(Q1.C,R2. p) annotation (points=[10,26; 10,40; 20,40], style(color=3,
          rgbcolor={0,0,255}));
    connect(Q1.E,Ground2. p)
      annotation (points=[10,14; 10,-20], style(color=3, rgbcolor={0,0,255}));
    annotation (
      experiment(StopTime=2e-007),
      experimentSetupOutput,
      Documentation(info="<html>
<font color=blue><b>By simulating over a second pulse, we obtain, for the second pulse, answers that are very close to those obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>even without default steady-state initialization:</b></font> <p>
<img src=\"../Images/test34d.png\"> <p>

<font color=blue><b>This approach may sometimes offer an alternative to steady-state initialization.</b></font>
</html>"),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
  end test34_II;

  model test35

  model FOURBIT
    model TWOBIT
    model ONEBIT
     model NAND

       annotation (Diagram, Icon(
                Rectangle(extent=[-92,96; 92,-96], style(color=3, rgbcolor={0,0,
                        255})),
                Text(
                  extent=[-90,82; -58,44],
                  style(color=3, rgbcolor={0,0,255}),
                  string="1"),
                Text(
                  extent=[-90,-46; -58,-84],
                  style(color=3, rgbcolor={0,0,255}),
                  string="2"),
                Text(
                  extent=[64,82; 96,44],
                  style(color=3, rgbcolor={0,0,255}),
                  string="3"),
                Text(
                  extent=[66,-46; 98,-84],
                  style(color=3, rgbcolor={0,0,255}),
                  string="4")));
          protected
       Modelica.Electrical.Analog.Interfaces.Pin C1 annotation (extent=[9,5; 11,
                  7]);
          protected
       Modelica.Electrical.Analog.Interfaces.NegativePin n1
         annotation (extent=[-21,5; -19,7]);
          public
       BondLib.Electrical.Analog.Basic.Ground Ground1
         annotation (extent=[0,-70; 20,-50]);
       BondLib.Electrical.Analog.Basic.Ground Ground2
         annotation (extent=[0,60; 20,80], rotation=180);
          protected
            Modelica.Electrical.Analog.Interfaces.Pin C2
              annotation (extent=[-81,5; -79,7]);
          protected
            Modelica.Electrical.Analog.Interfaces.PositivePin p1
              annotation (extent=[59,-1; 61,1]);
          public
       BondLib.Electrical.Analog.Basic.Ground Ground3
         annotation (extent=[70,-60; 90,-40]);
            Modelica.Electrical.Analog.Interfaces.Pin c1
              annotation (extent=[-114,54; -94,74]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c2
              annotation (extent=[-114,-74; -94,-54]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c3
              annotation (extent=[94,54; 114,74]);
          protected
            Modelica.Electrical.Analog.Interfaces.PositivePin p2
              annotation (extent=[-51,5; -49,7]);
          public
            Modelica.Electrical.Analog.Interfaces.PositivePin c4
              annotation (extent=[94,-74; 114,-54]);
       BondLib.Electrical.Analog.Spice.R R1(R=4000)
         annotation (extent=[-46,-4; -26,16], rotation=0);
       BondLib.Electrical.Analog.Spice.R R2(R=1600)
         annotation (extent=[-76,-4; -56,16], rotation=0);
       BondLib.Electrical.Analog.Spice.R R3(R=130)
         annotation (extent=[-60,-24; -40,-4],rotation=-90);
       BondLib.Electrical.Analog.Spice.R R4(R=1000)
         annotation (extent=[70,-30; 90,-10], rotation=-90);
       BondLib.Electrical.Analog.Spice.Qnv Q1(Level=1,
              BF=75,
              CJC=3e-12)
         annotation (extent=[-20,32; 0,8]);
       BondLib.Electrical.Analog.Spice.Qnv Q2(Level=1,
              BF=75,
              CJC=3e-12)
         annotation (extent=[-10,-22; 10,2]);
       BondLib.Electrical.Analog.Spice.Qnv Q3(Level=1,
              BF=75,
              CJC=3e-12)
         annotation (extent=[20,-6; 40,18]);
       BondLib.Electrical.Analog.Spice.Qnv Q4(Level=1,
              BF=75,
              CJC=3e-12)
         annotation (extent=[-80,-52; -60,-28]);
       BondLib.Electrical.Analog.Spice.D D1(
         EG=1.11)                           annotation (extent=[0,-44; 20,-24],
                rotation=-90);
       BondLib.Electrical.Analog.Spice.D D2(
         EG=1.11)                           annotation (extent=[0,30; 20,50],
                rotation=90);
       BondLib.Electrical.Analog.Spice.D D3(
         EG=1.11)                           annotation (extent=[-40,-80; -20,
                  -60], rotation=0);
     equation
            connect(p1, c3) annotation (points=[60,0; 60,64; 104,64], style(color=
                   3, rgbcolor={0,0,255}));
            connect(p2, c4) annotation (points=[-50,6; -50,90; 92,90; 92,-64; 104,
                  -64], style(color=3, rgbcolor={0,0,255}));
            connect(R1.p, p2) annotation (points=[-46,6; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R1.n, n1) annotation (points=[-26,6; -20,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R2.n, p2) annotation (points=[-56,6; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R2.p, C2) annotation (points=[-76,6; -80,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R3.p, p2) annotation (points=[-50,-4; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R4.n, Ground3.p) annotation (points=[80,-30; 80,-40], style(
                  color=3, rgbcolor={0,0,255}));
            connect(R4.p, p1) annotation (points=[80,-10; 80,0; 60,0], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q1.B, n1) annotation (points=[-20,20; -20,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(C1, Q1.C) annotation (points=[10,6; 10,14; 0,14], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q2.B, n1) annotation (points=[-10,-10; -20,-10; -20,6],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q2.C, C1) annotation (points=[10,-4; 10,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q2.E, c1) annotation (points=[10,-16; 50,-16; 50,82; -104,
                  82; -104,64], style(color=3, rgbcolor={0,0,255}));
            connect(Q3.B, C1) annotation (points=[20,6; 10,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q3.E, p1) annotation (points=[40,0; 60,0], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q3.C, C2) annotation (points=[40,12; 40,78; -80,78; -80,6],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q4.C, R3.n) annotation (points=[-60,-34; -50,-34; -50,-24],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q4.B, C2) annotation (points=[-80,-40; -80,6], style(color=
                    3, rgbcolor={0,0,255}));
            connect(D1.n, Ground1.p) annotation (points=[10,-44; 10,-50], style(
                  color=3, rgbcolor={0,0,255}));
            connect(D1.p, Q2.E) annotation (points=[10,-24; 10,-16], style(
                  color=3, rgbcolor={0,0,255}));
            connect(D2.n, Ground2.p) annotation (points=[10,50; 10,55; 10,60;
                  10,60], style(color=3, rgbcolor={0,0,255}));
            connect(D2.p, Q1.E) annotation (points=[10,30; 10,26; 0,26], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q1.E, c2) annotation (points=[0,26; 0,40; -104,40; -104,-64],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q4.E, D3.p) annotation (points=[-60,-46; -50,-46; -50,-70;
                  -40,-70], style(color=3, rgbcolor={0,0,255}));
            connect(D3.n, p1) annotation (points=[-20,-70; 60,-70; 60,0], style(
                  color=3, rgbcolor={0,0,255}));
     end NAND;
          NAND NAND1 annotation (extent=[-80,60; -60,80]);
          NAND NAND2 annotation (extent=[-80,-10; -60,10]);
          NAND NAND3 annotation (extent=[-80,-80; -60,-60]);
          NAND NAND4 annotation (extent=[-10,60; 10,80]);
          NAND NAND5 annotation (extent=[-10,-10; 10,10]);
          NAND NAND6 annotation (extent=[-10,-80; 10,-60]);
          NAND NAND7 annotation (extent=[60,60; 80,80]);
          NAND NAND8 annotation (extent=[60,-10; 80,10]);
          NAND NAND9 annotation (extent=[60,-80; 80,-60]);
          annotation (Diagram(
              Text(
                extent=[-42,34; -34,26],
                style(color=3, rgbcolor={0,0,255}),
                string="7"),
              Text(
                extent=[-18,34; -10,26],
                style(color=3, rgbcolor={0,0,255}),
                string="8"),
              Text(
                extent=[-32,-20; -24,-28],
                style(color=3, rgbcolor={0,0,255}),
                string="9"),
              Text(
                extent=[22,30; 30,22],
                style(color=3, rgbcolor={0,0,255}),
                string="10"),
              Text(
                extent=[44,34; 52,26],
                style(color=3, rgbcolor={0,0,255}),
                string="11"),
              Text(
                extent=[26,-16; 34,-24],
                style(color=3, rgbcolor={0,0,255}),
                string="12"),
              Text(
                extent=[68,36; 76,28],
                style(color=3, rgbcolor={0,0,255}),
                string="13")), Icon(
              Rectangle(extent=[-100,100; 100,-100], style(color=3, rgbcolor={0,0,
                      255})),
              Text(
                extent=[-94,94; -62,56],
                style(color=3, rgbcolor={0,0,255}),
                string="1"),
              Text(
                extent=[-94,18; -62,-20],
                style(color=3, rgbcolor={0,0,255}),
                string="2"),
              Text(
                extent=[-94,-58; -62,-96],
                style(color=3, rgbcolor={0,0,255}),
                string="3"),
              Text(
                extent=[64,94; 96,56],
                style(color=3, rgbcolor={0,0,255}),
                string="4"),
              Text(
                extent=[64,18; 96,-20],
                style(color=3, rgbcolor={0,0,255}),
                string="5"),
              Text(
                extent=[64,-58; 96,-96],
                style(color=3, rgbcolor={0,0,255}),
                string="6")));
          Modelica.Electrical.Analog.Interfaces.Pin c1
            annotation (extent=[-126,66; -106,86]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c2
            annotation (extent=[-126,-10; -106,10]);
          Modelica.Electrical.Analog.Interfaces.Pin c3
            annotation (extent=[-126,-86; -106,-66]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c4
            annotation (extent=[104,66; 124,86]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c5
            annotation (extent=[104,-10; 124,10]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c6
            annotation (extent=[104,-86; 124,-66]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c7
            annotation (extent=[-37,27; -35,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c8
            annotation (extent=[-19,27; -17,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c9
            annotation (extent=[-27,-29; -25,-27]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c10
            annotation (extent=[29,27; 31,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c11
            annotation (extent=[41,27; 43,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c12
            annotation (extent=[27,-25; 29,-23]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c13
            annotation (extent=[71,27; 73,29]);
    equation
          connect(NAND1.c1, c1) annotation (points=[-80.4,76.4; -116,76], style(
                color=3, rgbcolor={0,0,255}));
          connect(c1, NAND2.c1) annotation (points=[-116,76; -96,76; -96,6.4;
                -80.4,6.4], style(color=3, rgbcolor={0,0,255}));
          connect(NAND1.c2, c2) annotation (points=[-80.4,63.6; -98,63.6; -98,0;
                -116,0], style(color=3, rgbcolor={0,0,255}));
          connect(c2, NAND3.c1) annotation (points=[-116,0; -98,0; -98,-63.6;
                -80.4,-63.6], style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c1, c3) annotation (points=[-10.4,6.4; -16,6.4; -16,-46;
                -104,-46; -104,-76; -116,-76], style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c1, c3) annotation (points=[-10.4,-63.6; -14,-64; -16,-64;
                -16,-46; -104,-46; -104,-76; -116,-76], style(color=3, rgbcolor={
                  0,0,255}));
          connect(NAND8.c3, c4) annotation (points=[80.4,6.4; 104,6.4; 104,76;
                114,76], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c3, c5) annotation (points=[80.4,-63.6; 104,-63.6; 104,0;
                114,0], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c4, c6) annotation (points=[80.4,-76.4; 106,-76; 114,-76],
              style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND3.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,-76.4; -59.6,-76.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND6.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,-76.4; 10.4,-76.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND8.c4) annotation (points=[114,-76; 86,-76; 86,-6.4;
                80.4,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND7.c4) annotation (points=[114,-76; 86,-76; 86,63.6;
                80.4,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND5.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,-6.4; 10.4,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND4.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,63.6; 10.4,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND2.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,-6.4; -59.6,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND1.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,63.6; -59.6,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(NAND1.c3, c7) annotation (points=[-59.6,76.4; -36,76.4; -36,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND2.c2, c7) annotation (points=[-80.4,-6.4; -88,-6.4; -88,28;
                -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND3.c2, c7) annotation (points=[-80.4,-76.4; -88,-76.4; -88,
                28; -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c2, c7) annotation (points=[59.6,-76.4; 59.6,-86; -88,-86;
                -88,28; -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND2.c3, c8) annotation (points=[-59.6,6.4; -32,6.4; -32,28;
                -18,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c1, c8) annotation (points=[-10.4,76.4; -18,76.4; -18,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND3.c3, c9) annotation (points=[-59.6,-63.6; -26,-63.6; -26,
                -28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c2, c9) annotation (points=[-10.4,63.6; -26,63.6; -26,-28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c3, c10) annotation (points=[10.4,76.4; 30,76.4; 30,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND7.c1, c10) annotation (points=[59.6,76.4; 30,76.4; 30,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c2, c10) annotation (points=[-10.4,-6.4; -20,-6.4; -20,24;
                30,24; 30,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c3, c11) annotation (points=[10.4,6.4; 42,6.4; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c2, c11) annotation (points=[-10.4,-76.4; -20,-76.4; -20,
                -30; 42,-30; 42,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND7.c2, c11) annotation (points=[59.6,63.6; 42,63.6; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c1, c11) annotation (points=[59.6,-63.6; 42,-63.6; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c3, c12) annotation (points=[10.4,-63.6; 28,-63.6; 28,-24],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND8.c1, c12) annotation (points=[59.6,6.4; 48,6.4; 48,-24; 28,
                -24], style(color=3, rgbcolor={0,0,255}));
          connect(NAND8.c2, c13) annotation (points=[59.6,-6.4; 54,-6.4; 54,28;
                72,28], style(color=3, rgbcolor={0,0,255}));
          connect(c13, NAND7.c3) annotation (points=[72,28; 94,28; 94,76; 80.4,76;
                80.4,76.4], style(color=3, rgbcolor={0,0,255}));
    end ONEBIT;
        ONEBIT ONEBIT1 annotation (extent=[-10,50; 10,70]);
        annotation (Diagram, Icon(
            Rectangle(extent=[-90,94; 90,-66], style(color=3, rgbcolor={0,0,255})),
            Text(
              extent=[-92,98; -60,60],
              style(color=3, rgbcolor={0,0,255}),
              string="1"),
            Text(
              extent=[-92,58; -60,20],
              style(color=3, rgbcolor={0,0,255}),
              string="2"),
            Text(
              extent=[-92,18; -60,-20],
              style(color=3, rgbcolor={0,0,255}),
              string="3"),
            Text(
              extent=[-92,-22; -60,-60],
              style(color=3, rgbcolor={0,0,255}),
              string="4"),
            Text(
              extent=[-16,-36; 16,-74],
              style(color=3, rgbcolor={0,0,255}),
              string="5"),
            Text(
              extent=[62,98; 94,60],
              style(color=3, rgbcolor={0,0,255}),
              string="6"),
            Text(
              extent=[62,58; 94,20],
              style(color=3, rgbcolor={0,0,255}),
              string="7"),
            Text(
              extent=[62,18; 94,-20],
              style(color=3, rgbcolor={0,0,255}),
              string="8"),
            Text(
              extent=[62,-22; 94,-60],
              style(color=3, rgbcolor={0,0,255}),
              string="9")));

        ONEBIT ONEBIT2 annotation (extent=[-10,-70; 10,-50]);
        Modelica.Electrical.Analog.Interfaces.Pin c1
          annotation (extent=[-114,70; -94,90]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c2
          annotation (extent=[-114,30; -94,50]);
        Modelica.Electrical.Analog.Interfaces.Pin c3
          annotation (extent=[-114,-10; -94,10]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c4
          annotation (extent=[-114,-50; -94,-30]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c5
          annotation (extent=[-10,-90; 10,-70]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c6
          annotation (extent=[94,70; 114,90]);
        Modelica.Electrical.Analog.Interfaces.Pin c7
          annotation (extent=[94,30; 114,50]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c8
          annotation (extent=[94,-10; 114,10]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c9
          annotation (extent=[94,-50; 114,-30]);
    equation
        connect(ONEBIT1.c1, c1) annotation (points=[-11.6,67.6; -60,67.6; -60,
              80; -104,80],
                        style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c2, c2) annotation (points=[-11.6,60; -60,60; -60,40;
              -104,40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c1, c3) annotation (points=[-11.6,-52.4; -58,-52.4; -58,
              0; -104,0],
                       style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c2, c4) annotation (points=[-11.6,-60; -62,-60; -62,-40;
              -104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c4, c6) annotation (points=[11.4,-52.4; 60,-52.4; 60,80;
              104,80], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c3, c7) annotation (points=[-11.6,52.4; -18,52.4; -18,
              40; 104,40],
                       style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c5, c8) annotation (points=[11.4,-60; 64,-60; 64,0; 104,0],
            style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c6, c9) annotation (points=[11.4,52.4; 68,52.4; 68,-40;
              104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c6, c9) annotation (points=[11.4,-67.6; 68,-67.6; 68,-40;
              104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c3, ONEBIT1.c5) annotation (points=[-11.6,-67.6; -18,
              -67.6; -18,12; 16,12; 16,60; 11.4,60], style(color=3, rgbcolor={0,0,
                255}));
        connect(c5, ONEBIT1.c4) annotation (points=[0,-80; 24,-80; 24,67.6; 11.4,
              67.6], style(color=3, rgbcolor={0,0,255}));
    end TWOBIT;
      TWOBIT TWOBIT1 annotation (extent=[-10,28; 10,48]);
      TWOBIT TWOBIT2 annotation (extent=[-10,-52; 10,-32]);
      annotation (Diagram, Icon(
          Rectangle(extent=[-88,100; 88,-88], style(color=3, rgbcolor={0,0,255})),
          Text(
            extent=[-86,106; -54,68],
            style(color=3, rgbcolor={0,0,255}),
            string="1"),
          Text(
            extent=[-86,68; -54,30],
            style(color=3, rgbcolor={0,0,255}),
            string="2"),
          Text(
            extent=[-86,32; -54,-6],
            style(color=3, rgbcolor={0,0,255}),
            string="3"),
          Text(
            extent=[-86,-4; -54,-42],
            style(color=3, rgbcolor={0,0,255}),
            string="4"),
          Text(
            extent=[-86,-40; -54,-78],
            style(color=3, rgbcolor={0,0,255}),
            string="5"),
          Text(
            extent=[-92,-60; -60,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="6"),
          Text(
            extent=[-54,-60; -22,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="7"),
          Text(
            extent=[-16,-60; 16,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="8"),
          Text(
            extent=[22,-60; 54,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="9"),
          Text(
            extent=[54,-60; 86,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="10"),
          Text(
            extent=[50,-42; 82,-80],
            style(color=3, rgbcolor={0,0,255}),
            string="15"),
          Text(
            extent=[50,106; 82,68],
            style(color=3, rgbcolor={0,0,255}),
            string="11"),
          Text(
            extent=[48,68; 80,30],
            style(color=3, rgbcolor={0,0,255}),
            string="12"),
          Text(
            extent=[48,32; 80,-6],
            style(color=3, rgbcolor={0,0,255}),
            string="13"),
          Text(
            extent=[48,-6; 80,-44],
            style(color=3, rgbcolor={0,0,255}),
            string="14")));

      Modelica.Electrical.Analog.Interfaces.Pin c1
        annotation (extent=[-114,80; -94,100]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c2
        annotation (extent=[-114,42; -94,62]);
      Modelica.Electrical.Analog.Interfaces.Pin c3
        annotation (extent=[-114,4; -94,24]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c4
        annotation (extent=[-114,-34; -94,-14]);
      Modelica.Electrical.Analog.Interfaces.Pin c5
        annotation (extent=[-114,-72; -94,-52]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c6
        annotation (extent=[-90,-112; -70,-92]);
      Modelica.Electrical.Analog.Interfaces.Pin c7
        annotation (extent=[-50,-112; -30,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c8
        annotation (extent=[-10,-112; 10,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c9
        annotation (extent=[30,-112; 50,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c10
        annotation (extent=[70,-112; 90,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c11
        annotation (extent=[94,80; 114,100]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c12
        annotation (extent=[94,42; 114,62]);
      Modelica.Electrical.Analog.Interfaces.Pin c13
        annotation (extent=[94,4; 114,24]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c14
        annotation (extent=[94,-34; 114,-14]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c15
        annotation (extent=[94,-72; 114,-52]);
  equation
      connect(TWOBIT1.c1, c1) annotation (points=[-10.4,46; -40,46; -40,90; -104,
            90], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c2, c2) annotation (points=[-10.4,42; -44,42; -44,52; -104,
            52], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c3, c3) annotation (points=[-10.4,38; -44,38; -44,14; -104,
            14], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c4, c4) annotation (points=[-10.4,34; -40,34; -40,-24; -104,
            -24], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c1, c5) annotation (points=[-10.4,-34; -82,-34; -82,-62;
            -104,-62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c2, c6) annotation (points=[-10.4,-38; -80,-38; -80,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c3, c7) annotation (points=[-10.4,-42; -40,-42; -40,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c4, c8) annotation (points=[-10.4,-46; -18,-46; -18,-78; 0,
            -78; 0,-102], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c5, c9) annotation (points=[0,30; 0,2; 40,2; 40,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c6, c10) annotation (points=[10.4,46; 80,46; 80,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c5, c11) annotation (points=[0,-50; 26,-50; 26,90; 104,90],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c6, c12) annotation (points=[10.4,-34; 30,-34; 30,52; 104,
            52], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c7, c13) annotation (points=[10.4,42; 78,42; 78,14; 104,14],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c8, c14) annotation (points=[10.4,-42; 48,-42; 48,-24; 104,
            -24], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c9, c15) annotation (points=[10.4,34; 76,34; 76,-62; 104,
            -62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c9, c15) annotation (points=[10.4,-46; 48,-46; 48,-62; 104,
            -62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c7, TWOBIT1.c8) annotation (points=[10.4,-38; 16,-38; 16,38;
            10.4,38], style(color=3, rgbcolor={0,0,255}));
  end FOURBIT;
    FOURBIT FOURBIT1 annotation (extent=[-42,-16; 38,66]);
    annotation (Diagram, experiment(StopTime=6.4e-006),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))),
      Documentation(info="<html>
<font color=blue><b>I don't have enough memory in my computer to simulate this circuit.  It is too big.</b></font> <p>

<font color=blue><b>Each NAND gate contains 4 BJTs plus 3 diodes.  Each one-bit adder circuit contains 9 NANDs, each two-bit adder contains 2 one-bit adders, and the four-bit adder contains 2 two-bit adders.</b></font> <p>

<font color=blue><b>Consequently, the four-bit adder contains 36 NANDs, i.e., 144 BJTs plus 108 diodes.</b></font> <p>

<font color=blue><b>Since each</b></font> <b>level=1</b> <font color=blue><b>BJT contains two state variables and each diode contains one state variable, the four-bit adder represents a dynamic system of order 396.</b></font> <p>

<font color=blue><b>It is not meaningful to attempt a transistor-level simulation of such a large digital circuit.  The only reason why someone may wish to do so would be for the purpose of estimating the heat generated by the circuit.</b></font> <p>

<font color=blue><b>However, almost all of the heat is generated during switching events.  Depending on the switching speed of the transistors (transistor parameter values), more or less heat is being generated.  This can be well estimated for each manufactured gate.</b></font> <p>

<font color=blue><b>Hence it is possible to create a</b></font> <font color=red><b>digital gate-level library</b></font> <font color=blue><b>with fairly accurate estimation of the heat produced over time by each of the gates.</b></font> <p>

<font color=brown><b>I intend to create such libraries for at least</b></font> <b>TTL</b> <font color=brown><b>and</b></font> <b>ECL</b> <font color=brown><b>logic.  In both cases, I intend to create in parallel an</b></font> <font color=red><b>analog library</b></font> <font color=brown><b>for the transistor-level simulation of small digital circuits modeled at either gate or chip level, as well as a corresponding</b></font> <font color=red><b>digital library</b></font> <font color=brown><b>for the gate-level simulation of large digital circuits modeled at either gate or chip level.  Interface elements shall be made available that allow Boolean signals from the digital library to be converted to electrical voltages of the corresponding analog library, and vice-versa, offering full support for mixed-signal analysis.</b></font>
</html>"));
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=3,
      rising=10e-9,
      width=10e-9,
      falling=10e-9,
      period=50e-9,
      offset=0,
      startTime=0) annotation (extent=[-80,52; -60,72],rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT3(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=40e-9,
      period=200e-9)
                   annotation (extent=[-80,20; -60,40],rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT4(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=80e-9,
      period=400e-9)
                   annotation (extent=[-80,4; -60,24], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT5(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=160e-9,
      period=800e-9)
                   annotation (extent=[-80,-12; -60,8],rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT6(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=320e-9,
      period=1600e-9)
                   annotation (extent=[-80,-28; -60,-8],
                                                       rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT7(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=640e-9,
      period=3200e-9)
                   annotation (extent=[-80,-44; -60,-24],
                                                       rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT8(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=1280e-9,
      period=6400e-9)
                   annotation (extent=[-80,-60; -60,-40],
                                                       rotation=180);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-100,-90; -80,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[80,-90; 100,-70]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[60,-12; 80,8]);
    BondLib.Electrical.Analog.Spice.R R1(R=1000)
      annotation (extent=[60,52; 80,72],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R2(R=1000)
      annotation (extent=[60,36; 80,56],   rotation=0);
    BondLib.Electrical.Analog.Spice.R R3(R=1000)
      annotation (extent=[60,4; 80,24],    rotation=0);
    BondLib.Electrical.Analog.Spice.R R4(R=1000)
      annotation (extent=[60,-28; 80,-8],  rotation=0);
    BondLib.Electrical.Analog.Spice.R R5(R=1000)
      annotation (extent=[60,-44; 80,-24], rotation=0);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=20e-9,
      period=100e-9)
                   annotation (extent=[-80,36; -60,56],rotation=180);
  equation
    connect(VT1.p, FOURBIT1.c1)               annotation (points=[-60,62; -50.8,
          62; -50.8,61.9; -43.6,61.9], style(color=3, rgbcolor={0,0,255}));
    connect(VT3.p, FOURBIT1.c3)               annotation (points=[-60,30; -44,
          30; -43.6,30.74], style(color=3, rgbcolor={0,0,255}));
    connect(VT4.p, FOURBIT1.c4)               annotation (points=[-60,14; -44,
          14; -44,16; -43.6,15.16], style(color=3, rgbcolor={0,0,255}));
    connect(VT5.p, FOURBIT1.c5)               annotation (points=[-60,-2; -44,
          -2; -44,-0.42; -43.6,-0.42], style(color=3, rgbcolor={0,0,255}));
    connect(VT6.p, FOURBIT1.c6)               annotation (points=[-60,-18; -36,
          -18; -36,-16; -34,-16.82], style(color=3, rgbcolor={0,0,255}));
    connect(VT7.p, FOURBIT1.c7)               annotation (points=[-60,-34; -20,
          -34; -20,-16.82; -18,-16.82], style(color=3, rgbcolor={0,0,255}));
    connect(VT8.p, FOURBIT1.c8)               annotation (points=[-60,-50; -2,
          -50; -2,-16.82], style(color=3, rgbcolor={0,0,255}));
    connect(Ground1.p, VT8.n)               annotation (points=[-90,-70; -90,
          -50; -80,-50], style(color=3, rgbcolor={0,0,255}));
    connect(VT7.n, Ground1.p)               annotation (points=[-80,-34; -90,
          -34; -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VT6.n, Ground1.p)               annotation (points=[-80,-18; -90,
          -18; -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VT5.n, Ground1.p)               annotation (points=[-80,-2; -90,-2;
          -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VT4.n, Ground1.p)               annotation (points=[-80,14; -90,14;
          -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VT3.n, Ground1.p)               annotation (points=[-80,30; -90,30;
          -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p)               annotation (points=[-80,62; -90,62;
          -90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.p, FOURBIT1.c15)              annotation (points=[60,-2; 40,-2;
          40,-0.42; 39.6,-0.42], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground2.p)              annotation (points=[80,-2; 90,-2; 90,
          -70], style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Ground2.p) annotation (points=[80,-34; 90,-34; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(FOURBIT1.c10, R4.p) annotation (points=[30,-16.82; 34,-16; 32,-16;
          32,-18; 60,-18], style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground2.p) annotation (points=[80,-18; 90,-18; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p, FOURBIT1.c14) annotation (points=[60,14; 42,14; 42,16; 40,16;
          39.6,15.16], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, Ground2.p) annotation (points=[80,14; 90,14; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, FOURBIT1.c12) annotation (points=[60,46; 40,46; 39.6,46.32],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[80,46; 90,46; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.p, FOURBIT1.c11) annotation (points=[60,62; 49.8,62; 49.8,61.9;
          39.6,61.9], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[80,62; 90,62; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(FOURBIT1.c13, Ground2.p) annotation (points=[39.6,30.74; 40,30.74;
          40,30; 90,30; 90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(FOURBIT1.c9, R5.p) annotation (points=[14,-16.82; 14,-34; 60,-34],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT2.p, FOURBIT1.c2) annotation (points=[-60,46; -44,46; -43.6,46.32],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n, Ground1.p) annotation (points=[-80,46; -90,46; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
  end test35;

  model test35_II

  model FOURBIT
    model TWOBIT
    model ONEBIT
     model NAND

       annotation (Diagram, Icon(
                Rectangle(extent=[-92,96; 92,-96], style(color=3, rgbcolor={0,0,
                        255})),
                Text(
                  extent=[-90,82; -58,44],
                  style(color=3, rgbcolor={0,0,255}),
                  string="1"),
                Text(
                  extent=[-90,-46; -58,-84],
                  style(color=3, rgbcolor={0,0,255}),
                  string="2"),
                Text(
                  extent=[64,82; 96,44],
                  style(color=3, rgbcolor={0,0,255}),
                  string="3"),
                Text(
                  extent=[66,-46; 98,-84],
                  style(color=3, rgbcolor={0,0,255}),
                  string="4")));
          protected
       Modelica.Electrical.Analog.Interfaces.Pin C1 annotation (extent=[9,5; 11,
                  7]);
          protected
       Modelica.Electrical.Analog.Interfaces.NegativePin n1
         annotation (extent=[-21,5; -19,7]);
          protected
            Modelica.Electrical.Analog.Interfaces.Pin C2
              annotation (extent=[-81,5; -79,7]);
          protected
            Modelica.Electrical.Analog.Interfaces.PositivePin p1
              annotation (extent=[59,-1; 61,1]);
          public
            Modelica.Electrical.Analog.Interfaces.Pin c1
              annotation (extent=[-114,54; -94,74]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c2
              annotation (extent=[-114,-74; -94,-54]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c3
              annotation (extent=[94,54; 114,74]);
          protected
            Modelica.Electrical.Analog.Interfaces.PositivePin p2
              annotation (extent=[-51,5; -49,7]);
          public
            Modelica.Electrical.Analog.Interfaces.PositivePin c4
              annotation (extent=[94,-74; 114,-54]);
            BondLib.Electrical.Analog.Basic.Resistor R1(R=4000)
              annotation (extent=[-46,-4; -26,16]);
            BondLib.Electrical.Analog.Basic.Resistor R2(R=1600)
              annotation (extent=[-76,-4; -56,16]);
            BondLib.Electrical.Analog.Basic.Resistor R3(R=130)
              annotation (extent=[-60,-24; -40,-4], rotation=-90);
            BondLib.Electrical.Analog.Basic.Resistor R4(R=1000)
              annotation (extent=[70,-30; 90,-10], rotation=-90);
            BondLib.Electrical.Analog.Basic.Ground Ground1
              annotation (extent=[0,-72; 20,-52]);
            BondLib.Electrical.Analog.Basic.Ground Ground2
              annotation (extent=[0,80; 20,60]);
            BondLib.Electrical.Analog.Basic.Ground Ground3
              annotation (extent=[70,-60; 90,-40]);
            BondLib.Electrical.Analog.Semiconductors.Diode D1
              annotation (extent=[0,-44; 20,-24], rotation=-90);
            BondLib.Electrical.Analog.Semiconductors.Diode D2
              annotation (extent=[0,30; 20,50], rotation=90);
            BondLib.Electrical.Analog.Semiconductors.Diode D3
              annotation (extent=[-40,-80; -20,-60], rotation=0);
            BondLib.Electrical.Analog.Semiconductors.NPN Q1(
              Bf=75,
              Cje=1e-12,
              Cjc=3e-12) annotation (extent=[-20,32; 0,8]);
            BondLib.Electrical.Analog.Semiconductors.NPN Q2(
              Bf=75,
              Cje=1e-12,
              Cjc=3e-12) annotation (extent=[-10,-22; 10,2]);
            BondLib.Electrical.Analog.Semiconductors.NPN Q3(
              Bf=75,
              Cje=1e-12,
              Cjc=3e-12) annotation (extent=[20,-6; 40,18]);
            BondLib.Electrical.Analog.Semiconductors.NPN Q4(
              Bf=75,
              Cje=1e-12,
              Cjc=3e-12) annotation (extent=[-80,-52; -60,-28]);
     equation
            connect(p1, c3) annotation (points=[60,0; 60,64; 104,64], style(color=
                   3, rgbcolor={0,0,255}));
            connect(p2, c4) annotation (points=[-50,6; -50,90; 92,90; 92,-64; 104,
                  -64], style(color=3, rgbcolor={0,0,255}));
            connect(R1.n, n1) annotation (points=[-26,6; -20,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R1.p, p2) annotation (points=[-46,6; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R2.p, C2) annotation (points=[-76,6; -80,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R2.n, p2) annotation (points=[-56,6; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R3.p, p2) annotation (points=[-50,-4; -50,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(R4.p, p1) annotation (points=[80,-10; 80,0; 60,0], style(
                  color=3, rgbcolor={0,0,255}));
            connect(R4.n, Ground3.p) annotation (points=[80,-30; 80,-40], style(
                  color=3, rgbcolor={0,0,255}));
            connect(D1.n, Ground1.p) annotation (points=[10,-44; 10,-52], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Ground2.p, D2.n) annotation (points=[10,60; 10,50], style(
                  color=3, rgbcolor={0,0,255}));
            connect(D3.n, p1) annotation (points=[-20,-70; 60,-70; 60,0], style(
                  color=3, rgbcolor={0,0,255}));
            connect(D2.p, Q1.E) annotation (points=[10,30; 10,26; 0,26], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q1.C, C1) annotation (points=[0,14; 10,14; 10,6], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q1.B, n1) annotation (points=[-20,20; -20,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q2.C, C1) annotation (points=[10,-4; 10,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q2.E, D1.p) annotation (points=[10,-16; 10,-24], style(
                  color=3, rgbcolor={0,0,255}));
            connect(Q2.B, n1) annotation (points=[-10,-10; -20,-10; -20,6],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q2.E, c1) annotation (points=[10,-16; 50,-16; 50,82; -104,
                  82; -104,64], style(color=3, rgbcolor={0,0,255}));
            connect(Q1.E, c2) annotation (points=[0,26; 0,40; -104,40; -104,-64],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q3.B, C1) annotation (points=[20,6; 10,6], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q3.E, p1) annotation (points=[40,0; 60,0], style(color=3,
                  rgbcolor={0,0,255}));
            connect(Q3.C, C2) annotation (points=[40,12; 40,78; -80,78; -80,6],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q4.B, C2) annotation (points=[-80,-40; -80,6], style(color=
                    3, rgbcolor={0,0,255}));
            connect(Q4.C, R3.n) annotation (points=[-60,-34; -50,-34; -50,-24],
                style(color=3, rgbcolor={0,0,255}));
            connect(Q4.E, D3.p) annotation (points=[-60,-46; -50,-46; -50,-70;
                  -40,-70], style(color=3, rgbcolor={0,0,255}));
     end NAND;
          NAND NAND1 annotation (extent=[-80,60; -60,80]);
          NAND NAND2 annotation (extent=[-80,-10; -60,10]);
          NAND NAND3 annotation (extent=[-80,-80; -60,-60]);
          NAND NAND4 annotation (extent=[-10,60; 10,80]);
          NAND NAND5 annotation (extent=[-10,-10; 10,10]);
          NAND NAND6 annotation (extent=[-10,-80; 10,-60]);
          NAND NAND7 annotation (extent=[60,60; 80,80]);
          NAND NAND8 annotation (extent=[60,-10; 80,10]);
          NAND NAND9 annotation (extent=[60,-80; 80,-60]);
          annotation (Diagram(
              Text(
                extent=[-42,34; -34,26],
                style(color=3, rgbcolor={0,0,255}),
                string="7"),
              Text(
                extent=[-18,34; -10,26],
                style(color=3, rgbcolor={0,0,255}),
                string="8"),
              Text(
                extent=[-32,-20; -24,-28],
                style(color=3, rgbcolor={0,0,255}),
                string="9"),
              Text(
                extent=[22,30; 30,22],
                style(color=3, rgbcolor={0,0,255}),
                string="10"),
              Text(
                extent=[44,34; 52,26],
                style(color=3, rgbcolor={0,0,255}),
                string="11"),
              Text(
                extent=[26,-16; 34,-24],
                style(color=3, rgbcolor={0,0,255}),
                string="12"),
              Text(
                extent=[68,36; 76,28],
                style(color=3, rgbcolor={0,0,255}),
                string="13")), Icon(
              Rectangle(extent=[-100,100; 100,-100], style(color=3, rgbcolor={0,0,
                      255})),
              Text(
                extent=[-94,94; -62,56],
                style(color=3, rgbcolor={0,0,255}),
                string="1"),
              Text(
                extent=[-94,18; -62,-20],
                style(color=3, rgbcolor={0,0,255}),
                string="2"),
              Text(
                extent=[-94,-58; -62,-96],
                style(color=3, rgbcolor={0,0,255}),
                string="3"),
              Text(
                extent=[64,94; 96,56],
                style(color=3, rgbcolor={0,0,255}),
                string="4"),
              Text(
                extent=[64,18; 96,-20],
                style(color=3, rgbcolor={0,0,255}),
                string="5"),
              Text(
                extent=[64,-58; 96,-96],
                style(color=3, rgbcolor={0,0,255}),
                string="6")));
          Modelica.Electrical.Analog.Interfaces.Pin c1
            annotation (extent=[-126,66; -106,86]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c2
            annotation (extent=[-126,-10; -106,10]);
          Modelica.Electrical.Analog.Interfaces.Pin c3
            annotation (extent=[-126,-86; -106,-66]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c4
            annotation (extent=[104,66; 124,86]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c5
            annotation (extent=[104,-10; 124,10]);
          Modelica.Electrical.Analog.Interfaces.PositivePin c6
            annotation (extent=[104,-86; 124,-66]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c7
            annotation (extent=[-37,27; -35,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c8
            annotation (extent=[-19,27; -17,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c9
            annotation (extent=[-27,-29; -25,-27]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c10
            annotation (extent=[29,27; 31,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c11
            annotation (extent=[41,27; 43,29]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c12
            annotation (extent=[27,-25; 29,-23]);
        protected
          Modelica.Electrical.Analog.Interfaces.PositivePin c13
            annotation (extent=[71,27; 73,29]);
    equation
          connect(NAND1.c1, c1) annotation (points=[-80.4,76.4; -116,76], style(
                color=3, rgbcolor={0,0,255}));
          connect(c1, NAND2.c1) annotation (points=[-116,76; -96,76; -96,6.4;
                -80.4,6.4], style(color=3, rgbcolor={0,0,255}));
          connect(NAND1.c2, c2) annotation (points=[-80.4,63.6; -98,63.6; -98,0;
                -116,0], style(color=3, rgbcolor={0,0,255}));
          connect(c2, NAND3.c1) annotation (points=[-116,0; -98,0; -98,-63.6;
                -80.4,-63.6], style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c1, c3) annotation (points=[-10.4,6.4; -16,6.4; -16,-46;
                -104,-46; -104,-76; -116,-76], style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c1, c3) annotation (points=[-10.4,-63.6; -14,-64; -16,-64;
                -16,-46; -104,-46; -104,-76; -116,-76], style(color=3, rgbcolor={
                  0,0,255}));
          connect(NAND8.c3, c4) annotation (points=[80.4,6.4; 104,6.4; 104,76;
                114,76], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c3, c5) annotation (points=[80.4,-63.6; 104,-63.6; 104,0;
                114,0], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c4, c6) annotation (points=[80.4,-76.4; 106,-76; 114,-76],
              style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND3.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,-76.4; -59.6,-76.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND6.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,-76.4; 10.4,-76.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND8.c4) annotation (points=[114,-76; 86,-76; 86,-6.4;
                80.4,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND7.c4) annotation (points=[114,-76; 86,-76; 86,63.6;
                80.4,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND5.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,-6.4; 10.4,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND4.c4) annotation (points=[114,-76; 92,-76; 92,-90; 16,
                -90; 16,63.6; 10.4,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND2.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,-6.4; -59.6,-6.4], style(color=3, rgbcolor={0,0,255}));
          connect(c6, NAND1.c4) annotation (points=[114,-76; 92,-76; 92,-90; -56,
                -90; -56,63.6; -59.6,63.6], style(color=3, rgbcolor={0,0,255}));
          connect(NAND1.c3, c7) annotation (points=[-59.6,76.4; -36,76.4; -36,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND2.c2, c7) annotation (points=[-80.4,-6.4; -88,-6.4; -88,28;
                -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND3.c2, c7) annotation (points=[-80.4,-76.4; -88,-76.4; -88,
                28; -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c2, c7) annotation (points=[59.6,-76.4; 59.6,-86; -88,-86;
                -88,28; -36,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND2.c3, c8) annotation (points=[-59.6,6.4; -32,6.4; -32,28;
                -18,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c1, c8) annotation (points=[-10.4,76.4; -18,76.4; -18,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND3.c3, c9) annotation (points=[-59.6,-63.6; -26,-63.6; -26,
                -28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c2, c9) annotation (points=[-10.4,63.6; -26,63.6; -26,-28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND4.c3, c10) annotation (points=[10.4,76.4; 30,76.4; 30,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND7.c1, c10) annotation (points=[59.6,76.4; 30,76.4; 30,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c2, c10) annotation (points=[-10.4,-6.4; -20,-6.4; -20,24;
                30,24; 30,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND5.c3, c11) annotation (points=[10.4,6.4; 42,6.4; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c2, c11) annotation (points=[-10.4,-76.4; -20,-76.4; -20,
                -30; 42,-30; 42,28], style(color=3, rgbcolor={0,0,255}));
          connect(NAND7.c2, c11) annotation (points=[59.6,63.6; 42,63.6; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND9.c1, c11) annotation (points=[59.6,-63.6; 42,-63.6; 42,28],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND6.c3, c12) annotation (points=[10.4,-63.6; 28,-63.6; 28,-24],
              style(color=3, rgbcolor={0,0,255}));
          connect(NAND8.c1, c12) annotation (points=[59.6,6.4; 48,6.4; 48,-24; 28,
                -24], style(color=3, rgbcolor={0,0,255}));
          connect(NAND8.c2, c13) annotation (points=[59.6,-6.4; 54,-6.4; 54,28;
                72,28], style(color=3, rgbcolor={0,0,255}));
          connect(c13, NAND7.c3) annotation (points=[72,28; 94,28; 94,76; 80.4,76;
                80.4,76.4], style(color=3, rgbcolor={0,0,255}));
    end ONEBIT;
        ONEBIT ONEBIT1 annotation (extent=[-10,50; 10,70]);
        annotation (Diagram, Icon(
            Rectangle(extent=[-90,94; 90,-66], style(color=3, rgbcolor={0,0,255})),
            Text(
              extent=[-92,98; -60,60],
              style(color=3, rgbcolor={0,0,255}),
              string="1"),
            Text(
              extent=[-92,58; -60,20],
              style(color=3, rgbcolor={0,0,255}),
              string="2"),
            Text(
              extent=[-92,18; -60,-20],
              style(color=3, rgbcolor={0,0,255}),
              string="3"),
            Text(
              extent=[-92,-22; -60,-60],
              style(color=3, rgbcolor={0,0,255}),
              string="4"),
            Text(
              extent=[-16,-36; 16,-74],
              style(color=3, rgbcolor={0,0,255}),
              string="5"),
            Text(
              extent=[62,98; 94,60],
              style(color=3, rgbcolor={0,0,255}),
              string="6"),
            Text(
              extent=[62,58; 94,20],
              style(color=3, rgbcolor={0,0,255}),
              string="7"),
            Text(
              extent=[62,18; 94,-20],
              style(color=3, rgbcolor={0,0,255}),
              string="8"),
            Text(
              extent=[62,-22; 94,-60],
              style(color=3, rgbcolor={0,0,255}),
              string="9")));

        ONEBIT ONEBIT2 annotation (extent=[-10,-70; 10,-50]);
        Modelica.Electrical.Analog.Interfaces.Pin c1
          annotation (extent=[-114,70; -94,90]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c2
          annotation (extent=[-114,30; -94,50]);
        Modelica.Electrical.Analog.Interfaces.Pin c3
          annotation (extent=[-114,-10; -94,10]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c4
          annotation (extent=[-114,-50; -94,-30]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c5
          annotation (extent=[-10,-90; 10,-70]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c6
          annotation (extent=[94,70; 114,90]);
        Modelica.Electrical.Analog.Interfaces.Pin c7
          annotation (extent=[94,30; 114,50]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c8
          annotation (extent=[94,-10; 114,10]);
        Modelica.Electrical.Analog.Interfaces.PositivePin c9
          annotation (extent=[94,-50; 114,-30]);
    equation
        connect(ONEBIT1.c1, c1) annotation (points=[-11.6,67.6; -60,67.6; -60,
              80; -104,80],
                        style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c2, c2) annotation (points=[-11.6,60; -60,60; -60,40;
              -104,40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c1, c3) annotation (points=[-11.6,-52.4; -58,-52.4; -58,
              0; -104,0],
                       style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c2, c4) annotation (points=[-11.6,-60; -62,-60; -62,-40;
              -104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c4, c6) annotation (points=[11.4,-52.4; 60,-52.4; 60,80;
              104,80], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c3, c7) annotation (points=[-11.6,52.4; -18,52.4; -18,
              40; 104,40],
                       style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c5, c8) annotation (points=[11.4,-60; 64,-60; 64,0; 104,0],
            style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT1.c6, c9) annotation (points=[11.4,52.4; 68,52.4; 68,-40;
              104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c6, c9) annotation (points=[11.4,-67.6; 68,-67.6; 68,-40;
              104,-40], style(color=3, rgbcolor={0,0,255}));
        connect(ONEBIT2.c3, ONEBIT1.c5) annotation (points=[-11.6,-67.6; -18,
              -67.6; -18,12; 16,12; 16,60; 11.4,60], style(color=3, rgbcolor={0,0,
                255}));
        connect(c5, ONEBIT1.c4) annotation (points=[0,-80; 24,-80; 24,67.6; 11.4,
              67.6], style(color=3, rgbcolor={0,0,255}));
    end TWOBIT;
      TWOBIT TWOBIT1 annotation (extent=[-10,28; 10,48]);
      TWOBIT TWOBIT2 annotation (extent=[-10,-52; 10,-32]);
      annotation (Diagram, Icon(
          Rectangle(extent=[-88,100; 88,-88], style(color=3, rgbcolor={0,0,255})),
          Text(
            extent=[-86,106; -54,68],
            style(color=3, rgbcolor={0,0,255}),
            string="1"),
          Text(
            extent=[-86,68; -54,30],
            style(color=3, rgbcolor={0,0,255}),
            string="2"),
          Text(
            extent=[-86,32; -54,-6],
            style(color=3, rgbcolor={0,0,255}),
            string="3"),
          Text(
            extent=[-86,-4; -54,-42],
            style(color=3, rgbcolor={0,0,255}),
            string="4"),
          Text(
            extent=[-86,-40; -54,-78],
            style(color=3, rgbcolor={0,0,255}),
            string="5"),
          Text(
            extent=[-92,-60; -60,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="6"),
          Text(
            extent=[-54,-60; -22,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="7"),
          Text(
            extent=[-16,-60; 16,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="8"),
          Text(
            extent=[22,-60; 54,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="9"),
          Text(
            extent=[54,-60; 86,-98],
            style(color=3, rgbcolor={0,0,255}),
            string="10"),
          Text(
            extent=[50,-42; 82,-80],
            style(color=3, rgbcolor={0,0,255}),
            string="15"),
          Text(
            extent=[50,106; 82,68],
            style(color=3, rgbcolor={0,0,255}),
            string="11"),
          Text(
            extent=[48,68; 80,30],
            style(color=3, rgbcolor={0,0,255}),
            string="12"),
          Text(
            extent=[48,32; 80,-6],
            style(color=3, rgbcolor={0,0,255}),
            string="13"),
          Text(
            extent=[48,-6; 80,-44],
            style(color=3, rgbcolor={0,0,255}),
            string="14")));

      Modelica.Electrical.Analog.Interfaces.Pin c1
        annotation (extent=[-114,80; -94,100]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c2
        annotation (extent=[-114,42; -94,62]);
      Modelica.Electrical.Analog.Interfaces.Pin c3
        annotation (extent=[-114,4; -94,24]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c4
        annotation (extent=[-114,-34; -94,-14]);
      Modelica.Electrical.Analog.Interfaces.Pin c5
        annotation (extent=[-114,-72; -94,-52]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c6
        annotation (extent=[-90,-112; -70,-92]);
      Modelica.Electrical.Analog.Interfaces.Pin c7
        annotation (extent=[-50,-112; -30,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c8
        annotation (extent=[-10,-112; 10,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c9
        annotation (extent=[30,-112; 50,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c10
        annotation (extent=[70,-112; 90,-92]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c11
        annotation (extent=[94,80; 114,100]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c12
        annotation (extent=[94,42; 114,62]);
      Modelica.Electrical.Analog.Interfaces.Pin c13
        annotation (extent=[94,4; 114,24]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c14
        annotation (extent=[94,-34; 114,-14]);
      Modelica.Electrical.Analog.Interfaces.PositivePin c15
        annotation (extent=[94,-72; 114,-52]);
  equation
      connect(TWOBIT1.c1, c1) annotation (points=[-10.4,46; -40,46; -40,90; -104,
            90], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c2, c2) annotation (points=[-10.4,42; -44,42; -44,52; -104,
            52], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c3, c3) annotation (points=[-10.4,38; -44,38; -44,14; -104,
            14], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c4, c4) annotation (points=[-10.4,34; -40,34; -40,-24; -104,
            -24], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c1, c5) annotation (points=[-10.4,-34; -82,-34; -82,-62;
            -104,-62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c2, c6) annotation (points=[-10.4,-38; -80,-38; -80,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c3, c7) annotation (points=[-10.4,-42; -40,-42; -40,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c4, c8) annotation (points=[-10.4,-46; -18,-46; -18,-78; 0,
            -78; 0,-102], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c5, c9) annotation (points=[0,30; 0,2; 40,2; 40,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c6, c10) annotation (points=[10.4,46; 80,46; 80,-102],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c5, c11) annotation (points=[0,-50; 26,-50; 26,90; 104,90],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c6, c12) annotation (points=[10.4,-34; 30,-34; 30,52; 104,
            52], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c7, c13) annotation (points=[10.4,42; 78,42; 78,14; 104,14],
          style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c8, c14) annotation (points=[10.4,-42; 48,-42; 48,-24; 104,
            -24], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT1.c9, c15) annotation (points=[10.4,34; 76,34; 76,-62; 104,
            -62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c9, c15) annotation (points=[10.4,-46; 48,-46; 48,-62; 104,
            -62], style(color=3, rgbcolor={0,0,255}));
      connect(TWOBIT2.c7, TWOBIT1.c8) annotation (points=[10.4,-38; 16,-38; 16,38;
            10.4,38], style(color=3, rgbcolor={0,0,255}));
  end FOURBIT;
    FOURBIT FOURBIT1 annotation (extent=[-42,-16; 38,66]);
    annotation (Diagram(
              Text(
          extent=[-90,100; 90,80],
          style(color=42, rgbcolor={127,0,0}),
          string="Using components of the standard library:"),  Line(points=[-84,82;
              84,82],         style(color=42, rgbcolor={127,0,0}))),
                         experiment(StopTime=6.4e-006),
      Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
      Documentation(info="<html>
<font color=blue><b>Using components of the</b></font> <font color=red><b>Modelica standard library</b></font> <font color=blue><b>instead of</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, the situation doesn't change drastically.  The circuit remains too big.</b></font> <p>

<font color=blue><b>I was able to compile the circuit in roughly</b></font> <b>20 minutes</b> <font color=blue><b>of real time:</b></font> <p>
<img src=\"../Images/test35a.png\"> <p>

<font color=blue><b>I then started to simulate, but interrupted the simulation after roughly</b></font> <b>1.5 hours</b> <font color=blue><b>of real time:</b></font> <p>
<img src=\"../Images/test35b.png\"> <p>

<font color=blue><b>The simulation results obtained are shown below:</b></font> <p>
<img src=\"../Images/test35d.png\"> <p>

<font color=blue><b>I don't know how they compare to</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>since I couldn't get subcircuits to run correctly in my evaluation version of</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.  The</b></font> <font color=red><b>Berkeley Spice-3g</b></font> <font color=blue><b>results are shown below:</b></font> <p>
<img src=\"../Images/test35c.png\"> <p>

<font color=blue><b>but I don't know how long the simulation took.</b></font>
</html>"));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[-100,-90; -80,-70]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[80,-90; 100,-70]);
    BondLib.Electrical.Analog.Basic.Resistor R1(R=1000)
      annotation (extent=[60,52; 80,72]);
    BondLib.Electrical.Analog.Basic.Resistor R2(R=1000)
      annotation (extent=[60,36; 80,56]);
    BondLib.Electrical.Analog.Basic.Resistor R3(R=1000)
      annotation (extent=[60,4; 80,24]);
    BondLib.Electrical.Analog.Basic.Resistor R4(R=1000)
      annotation (extent=[60,-28; 80,-8]);
    BondLib.Electrical.Analog.Basic.Resistor R5(R=1000)
      annotation (extent=[60,-44; 80,-24]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
      annotation (extent=[60,-12; 80,8]);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=3,
      rising=10e-9,
      width=10e-9,
      falling=10e-9,
      period=50e-9,
      offset=0,
      startTime=0) annotation (extent=[-80,52; -60,72], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=20e-9,
      period=100e-9) annotation (extent=[-80,36; -60,56], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT3(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=40e-9,
      period=200e-9) annotation (extent=[-80,20; -60,40], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT4(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=80e-9,
      period=400e-9) annotation (extent=[-80,4; -60,24], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT5(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=160e-9,
      period=800e-9) annotation (extent=[-80,-12; -60,8], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT6(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=320e-9,
      period=1600e-9) annotation (extent=[-80,-28; -60,-8], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT7(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=640e-9,
      period=3200e-9) annotation (extent=[-80,-44; -60,-24], rotation=180);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT8(
      V=3,
      rising=10e-9,
      falling=10e-9,
      offset=0,
      startTime=0,
      width=1280e-9,
      period=6400e-9) annotation (extent=[-80,-60; -60,-40], rotation=180);
  equation
    connect(FOURBIT1.c13, Ground2.p) annotation (points=[39.6,30.74; 40,30.74;
          40,30; 90,30; 90,-70], style(color=3, rgbcolor={0,0,255}));
    connect(R1.p, FOURBIT1.c11) annotation (points=[60,62; 49.8,62; 49.8,61.9;
          39.6,61.9], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n, Ground2.p) annotation (points=[80,62; 90,62; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.p, FOURBIT1.c12) annotation (points=[60,46; 40,46; 39.6,46.32],
        style(color=3, rgbcolor={0,0,255}));
    connect(R2.n, Ground2.p) annotation (points=[80,46; 90,46; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p, FOURBIT1.c14) annotation (points=[60,14; 40,14; 40,16; 39.6,
          15.16], style(color=3, rgbcolor={0,0,255}));
    connect(R3.n, Ground2.p) annotation (points=[80,14; 90,14; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.p, FOURBIT1.c10) annotation (points=[60,-18; 32,-18; 32,-16; 30,
          -16.82], style(color=3, rgbcolor={0,0,255}));
    connect(R4.n, Ground2.p) annotation (points=[80,-18; 90,-18; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(FOURBIT1.c9, R5.p) annotation (points=[14,-16.82; 14,-34; 60,-34],
        style(color=3, rgbcolor={0,0,255}));
    connect(R5.n, Ground2.p) annotation (points=[80,-34; 90,-34; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(VC1.p, FOURBIT1.c15) annotation (points=[60,-2; 40,-2; 40,-0.42;
          39.6,-0.42], style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n, Ground2.p) annotation (points=[80,-2; 90,-2; 90,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(VT1.p, FOURBIT1.c1) annotation (points=[-60,62; -51.8,62; -51.8,
          61.9; -43.6,61.9], style(color=3, rgbcolor={0,0,255}));
    connect(VT1.n, Ground1.p) annotation (points=[-80,62; -90,62; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT2.p, FOURBIT1.c2) annotation (points=[-60,46; -44,46; -43.6,46.32],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n, Ground1.p) annotation (points=[-80,46; -90,46; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT3.p, FOURBIT1.c3) annotation (points=[-60,30; -44,30; -43.6,30.74],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT3.n, Ground1.p) annotation (points=[-80,30; -90,30; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT4.p, FOURBIT1.c4) annotation (points=[-60,14; -44,14; -44,16;
          -43.6,15.16], style(color=3, rgbcolor={0,0,255}));
    connect(VT4.n, Ground1.p) annotation (points=[-80,14; -90,14; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT5.p, FOURBIT1.c5) annotation (points=[-60,-2; -46,-2; -46,0; -44,
          0; -44,-0.42; -43.6,-0.42], style(color=3, rgbcolor={0,0,255}));
    connect(VT5.n, Ground1.p) annotation (points=[-80,-2; -90,-2; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT6.p, FOURBIT1.c6) annotation (points=[-60,-18; -36,-18; -36,-16;
          -34,-16.82], style(color=3, rgbcolor={0,0,255}));
    connect(VT6.n, Ground1.p) annotation (points=[-80,-18; -90,-18; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT7.p, FOURBIT1.c7) annotation (points=[-60,-34; -18,-34; -18,
          -16.82], style(color=3, rgbcolor={0,0,255}));
    connect(VT7.n, Ground1.p) annotation (points=[-80,-34; -90,-34; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT8.p, FOURBIT1.c8) annotation (points=[-60,-50; -2,-50; -2,-16.82],
        style(color=3, rgbcolor={0,0,255}));
    connect(VT8.n, Ground1.p) annotation (points=[-80,-50; -90,-50; -90,-70],
        style(color=3, rgbcolor={0,0,255}));
  end test35_II;

  model test36
    output Modelica.SIunits.Voltage vin;
    output Modelica.SIunits.Voltage vout;
    BondLib.Electrical.Analog.Basic.Ground Gnd1
                                        annotation (extent=[-8,-82; 8,-70]);
    BondLib.Electrical.Analog.Spice.R Rg(
      Tnom=300.15,
      R=75e3,
      TR1=0,
      TR2=0,
      Area=1) annotation (extent=[-10,-60; 10,-40], rotation=90);
    BondLib.Electrical.Analog.Spice.Jp Jp1(
      Level=1,
      Tnom=300.15,
      IS=1e-15,
      RS=0.5,
      RD=1.5,
      RG=0,
      BETA=15e-3,
      LAMBDA=0.001,
      TCV=0,
      TRS=0,
      TRD=0,
      TRG=0,
      EG=1.16,
      N=1,
      XTI=3,
      CGS=50e-15,
      CGD=50e-15,
      M=0.5,
      FC=0.5,
      PB=0.2,
      TT=1e-12,
      BEX=0,
      GminDC=1e-16,
      Area=1,
      EMin=-100,
      EMax=40,
      VT0=-1.1) annotation (extent=[-40,-22; -20,2]);
    BondLib.Electrical.Analog.Spice.Jp Jp2(
      Level=1,
      Tnom=300.15,
      IS=1e-15,
      RS=0.5,
      RD=1.5,
      RG=0,
      BETA=15e-3,
      LAMBDA=0.001,
      TCV=0,
      TRS=0,
      TRD=0,
      TRG=0,
      EG=1.16,
      N=1,
      XTI=3,
      CGS=50e-15,
      CGD=50e-15,
      M=0.5,
      FC=0.5,
      PB=0.2,
      TT=1e-12,
      BEX=0,
      GminDC=1e-16,
      Area=1,
      EMin=-100,
      EMax=40,
      VT0=-1.1) annotation (extent=[40,-22; 20,2]);
    BondLib.Electrical.Analog.Spice.R Rd1(
      Tnom=300.15,
      TR1=0,
      TR2=0,
      Area=1,
      R=150e3) annotation (extent=[-10,20; -30,40], rotation=90);
    BondLib.Electrical.Analog.Spice.R Rd2(
      Tnom=300.15,
      TR1=0,
      TR2=0,
      Area=1,
      R=150e3) annotation (extent=[10,20; 30,40], rotation=90);
    BondLib.Electrical.Analog.Spice.RampingSources.V V1(
                                                V=-5, rampTime=1e-3)
      annotation (extent=[50,20; 70,40], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Gnd2
                                        annotation (extent=[52,-2; 68,10]);
    BondLib.Electrical.Analog.Spice.RampingSources.V V2(
                                                V=0.5, rampTime=1e-3)
      annotation (extent=[50,-60; 70,-40], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Gnd3
                                        annotation (extent=[52,-82; 68,-70]);
    BondLib.Electrical.Analog.Spice.RampingSources.sinV Vin(
      offset=0.5,
      freqHz=1e3,
      rampTime=1e-3,
      settleTime=1e-3,
      V=0.02) annotation (extent=[-70,-60; -50,-40], rotation=-90);
    BondLib.Electrical.Analog.Basic.Ground Gnd4
      annotation (extent=[-68,-82; -52,-70]);
    BondLib.Electrical.Analog.Sensors.VoltageSensor Vout
      annotation (extent=[-10,20; 10,0]);
    BondLib.Thermal.HeatTransfer.Sources.FixedTemperature FixedTemperature1(
                                                                    T=
          300.15) annotation (extent=[-80,60; -60,80]);
  equation
    vin = Vin.v;
    vout = Vout.v;
    connect(Rg.p,Gnd1. p) annotation (points=[-6.12303e-016,-60; 0,-60; 0,-70],
                style(color=3, rgbcolor={0,0,255}));
    connect(Jp1.S,Rg. n) annotation (points=[-20,-16; -20,-30; 0,-30; 0,-40;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Jp2.S,Rg. n) annotation (points=[20,-16; 20,-30; 0,-30; 0,-40;
          6.12303e-016,-40], style(color=3, rgbcolor={0,0,255}));
    connect(Rd1.p,Jp1. D) annotation (points=[-20,20; -20,-4], style(color=
            3, rgbcolor={0,0,255}));
    connect(Rd2.p,Jp2. D) annotation (points=[20,20; 20,-4], style(color=3,
          rgbcolor={0,0,255}));
    connect(Rd1.n,Rd2. n) annotation (points=[-20,40; -20,50; 20,50; 20,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Rd2.n,V1. p) annotation (points=[20,40; 20,50; 60,50; 60,40],
        style(color=3, rgbcolor={0,0,255}));
    connect(V1.n,Gnd2. p) annotation (points=[60,20; 60,10], style(color=3,
          rgbcolor={0,0,255}));
    connect(Jp2.G,V2. p) annotation (points=[40,-16; 60,-16; 60,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(V2.n,Gnd3. p) annotation (points=[60,-60; 60,-70], style(color=
            3, rgbcolor={0,0,255}));
    connect(Vin.n,Gnd4. p) annotation (points=[-60,-60; -60,-70], style(
          color=3, rgbcolor={0,0,255}));
    connect(Jp1.G,Vin. p) annotation (points=[-40,-16; -60,-16; -60,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(Vout.p,Rd1. p) annotation (points=[-10,10; -20,10; -20,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(Vout.n,Rd2. p) annotation (points=[10,10; 20,10; 20,20], style(
          color=3, rgbcolor={0,0,255}));
    connect(FixedTemperature1.port,Rd1. heatPort) annotation (points=[-59,70;
          -44,70; -44,30; -30,30],     style(color=42, rgbcolor={191,0,0}));
    connect(FixedTemperature1.port,Rd2. heatPort) annotation (points=[-59,70;
          44,70; 44,30; 30,30],     style(color=42, rgbcolor={191,0,0}));
    connect(Jp2.heatPort,Rd2. heatPort) annotation (points=[30,-22; 44,-22; 44,
          30; 30,30], style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=42,
        rgbfillColor={209,0,0},
        fillPattern=1));
    connect(Jp1.heatPort,Rd1. heatPort) annotation (points=[-30,-22; -44,-22;
          -44,30; -30,30],      style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=42,
        rgbfillColor={209,0,0},
        fillPattern=1));
    connect(Rg.heatPort,Jp2. heatPort) annotation (points=[10,-50; 30,-50; 30,
          -22],    style(
        color=42,
        rgbcolor={191,0,0},
        fillColor=42,
        rgbfillColor={209,0,0},
        fillPattern=1));
    annotation (Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-70,10; 70,-10], style(
            color=1,
            rgbcolor={255,0,0},
            fillColor=1,
            rgbfillColor={255,0,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="!",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))), Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Simple Differential Pair

V1          1 0  PWL 0s 0V 1ms -5V
V2          7 0  PWL 0s 0V 1ms 0.5V
VR1         5 0  PWL 0s 0V 1ms 0.5V
VS1         6 5  SIN 0V 0.02V 1kHz 2ms 0 0

Rd1         3 1  150k
Rd2         2 1  150k
Rg          0 4  75k

J1          3 6 4 Jbreakp 1
J2          2 7 4 Jbreakp 1

.MODEL Jbreakp PJF
+VTO=-1.1 LAMBDA=0.001 BETA=0.015 N=1 IS=1e-15 PB=0.2
+RS=0.5 RD=1.5 CGS=50e-15 CGD=50e-15 M=0.5 FC=0.5

.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/test36a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/test36b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/test36d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>There are differences between the two simulation results that are caused either by a mismatch of</b></font> <b>JFET</b> <font color=blue><b>parameter values or model equations.  The</b></font> <b>JFET</b> <font color=blue><b>model of</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>hasn't been debugged much until now.</b></font> <p>

<font color=blue><b>The circuit had to be simulated under</b></font> <font color=red><b>Dymola 6.0b</b></font> <font color=blue><b>together with the</b></font> <font color=red><b>Modelica standard library 2.2</b></font><font color=blue><b>, because the current version (</b></font><font color=red><b>Dymola 6.1</b></font> <font color=blue><b>with</b></font> <font color=red><b>Modelica 2.2.1</b></font><font color=blue><b>) no longer simulates this circuit.  I now obtain the error message:</b></font> <p>
<img src=\"../Images/test36c.png\"> <p>

<font color=blue><b>There seems to be an issue with</b></font> <font color=red><b>Dymola 6.1</b></font><font color=blue><b>.</b></font>
</html>"));
  end test36;

  package transistor

    model small_npn1

      annotation (Diagram,
        experiment,
        experimentSetupOutput,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
NPN characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

Q1 1 2 3 QbreakN
.MODEL QbreakN NPN

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_npn1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_npn1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_npn1c.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
      BondLib.Electrical.Analog.Spice.Qnv Q1
        annotation (extent=[10,8; 30,32]);
    equation
      connect(Ground1.p, VC1.n)              annotation (points=[-30,-30; -30,
            -25; -30,-20; -30,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p, VR1.n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(R1.p, Q1.E) annotation (points=[40,0; 40,14; 30,14], style(color=
              3, rgbcolor={0,0,255}));
      connect(Q1.C, VC1.p) annotation (points=[30,26; 40,26; 40,40; -30,40; -30,
            0], style(color=3, rgbcolor={0,0,255}));
      connect(VR1.p, Q1.B) annotation (points=[1.83691e-015,0; 0,0; 0,20; 10,20],
          style(color=3, rgbcolor={0,0,255}));
    end small_npn1;

    model small_pnp1

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
      BondLib.Electrical.Analog.Spice.Qpl Q1
        annotation (extent=[30,8; 10,32]);
    equation
      connect(Ground1.p,VC1. n)              annotation (points=[-30,-30; -30,
            -20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p,VR1. n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      annotation (Diagram,
        experiment(Algorithm="Radau"),
        experimentSetupOutput,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PNP characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

Q1 1 3 2 QbreakP
.MODEL QbreakP PNP

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_pnp1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_pnp1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_pnp1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>On this circuit, default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) leads to incorrect simulation results:</b></font> <p>
<img src=\"../Images/small_pnp1d.png\"> <p>

<font color=blue><b>Using</b></font> <b>Radau-IIa</b> <font color=blue><b>instead of</b></font> <b>DASSL</b> <font color=blue><b>leads to equally incorrect but different results:</b></font> <p>
<img src=\"../Images/small_pnp1e.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=6,
              rgbcolor={255,255,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="?",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=6,
              rgbfillColor={255,255,0},
              fillPattern=1))));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(R1.p, Q1.B) annotation (points=[40,0; 40,20; 30,20], style(color=
              3, rgbcolor={0,0,255}));
      connect(Q1.C,VC1. p) annotation (points=[10,26; -30,26; -30,0], style(
            color=3, rgbcolor={0,0,255}));
      connect(Q1.E,VR1. p) annotation (points=[10,14; 1.83691e-015,14;
            1.83691e-015,0], style(color=3, rgbcolor={0,0,255}));
    end small_pnp1;

    model small_nmos1

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);

      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    GAMMA=0.60309,
        PHI=1,
        LD=0.1e-6,
        TPG=1,
        PB=1,
        CJ=4.09e-4,
        MJ=0.307,
        CJSW=3.078e-10,
        MJSW=0.3,
        RD=1,
        RS=1,
          NSUB=4.9999999e16,
    L=10e-6, W=90e-6,
          Level=1,
          VT0=0.5,
          KP=660e-6,
          LAMBDA=0.05,
          CGB0=2e-9,
          CGD0=3e-9,
          CGS0=3e-9,
        EG=1.11)
     annotation (extent=[10,8; 30,32]);
    equation
      connect(Ground1.p,VC1. n)              annotation (points=[-30,-30; -30,
            -25; -30,-20; -30,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p,VR1. n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      annotation (Diagram, experiment(Algorithm="Radau"),
        experimentSetupOutput,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
NMOS characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

M1 2 1 3 3 Mbreakn L=10e-6 W=90e-6

.MODEL Mbreakn NMOS
+ level=1 TPG=1 NSUB=4.9999999e10 VTO=0.5 LAMBDA=0.05
+ LD=0.1e-6 KP=660e-6 GAMMA=0.60309 PHI=1 PB=1 Rd=1 Rs=1
+ CJ=4.09e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=2e-9
+ CGDO=3e-9 CGSO=3e-9

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_nmos1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_nmos1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_nmos1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Using default parameter values, I could not get a very close match between the two models.  Evidently,</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>uses different default MOSFET parameter values from</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>, and I don't know what they are.  By explicitly specifying</b></font> <b>level=1 RD=1 RS=1</b> <font color=blue><b>in both models, and by also changing</b></font> <b>EG</b> <font color=blue><b>to a value of</b></font> <b>EG=1.11</b> <font color=blue><b>in the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>model, I already obtained a fairly close match between the two models.  By specifying a few additional parameter values explicitly, I obtained a perfect match (except for the initial transient).</b></font> <p>

<b>DASSL</b> <font color=blue><b>died on the initial transient.  Switching to</b></font> <b>Radau-IIa</b> <font color=blue><b>solved that problem.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/small_nmos1d.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(Mn1.S, R1.p) annotation (points=[30,14; 40,14; 40,0], style(color=
             3, rgbcolor={0,0,255}));
      connect(Mn1.D, VR1.p) annotation (points=[30,26; 40,26; 40,40;
            1.83691e-015,40; 1.83691e-015,0], style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.G, VC1.p) annotation (points=[10,14; -30,14; -30,0], style(
            color=3, rgbcolor={0,0,255}));
      connect(Mn1.B, Mn1.S)
        annotation (points=[30,20; 30,14], style(color=3, rgbcolor={0,0,255}));
    end small_nmos1;

    model small_pmos1

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Spice.Mp Mp1(
    GAMMA=0.60309,
        PHI=1,
        NSS=0,
        LD=0.1e-6,
        TPG=1,
        PB=1,
        CJ=4.09e-4,
        MJ=0.307,
        CJSW=3.078e-10,
        MJSW=0.3,
        RD=1,
        RS=1,
          NSUB=4.9999999e16,
    L=10e-6, W=90e-6,
          Level=1,
          VT0=-0.5,
          KP=660e-6,
          LAMBDA=0.05,
          CGB0=2e-9,
          CGD0=3e-9,
          CGS0=3e-9,
        EG=1.11)
      annotation (extent=[10,8; 30,32]);

      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
    equation
      connect(Ground1.p,VC1. n)              annotation (points=[-30,-30; -30,
            -25; -30,-20; -30,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p,VR1. n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      annotation (Diagram, experiment,
        experimentSetupOutput,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PMOS characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

M1 2 1 3 3 MbreakP-X L=10e-6 W=90e-6

.MODEL MbreakP-X PMOS
+ level=1 TPG=1 NSUB=4.9999999e10 VTO=-0.5 LAMBDA=0.05
+ LD=0.1e-6 KP=660e-6 GAMMA=0.60309 PHI=1 PB=1 Rd=1 Rs=1
+ CJ=4.09e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=2e-9
+ CGDO=3e-9 CGSO=3e-9

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_pmos1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_pmos1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_pmos1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>I obtain a mild difference in the simulation results of</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>that I cannot currently explain.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/small_pmos1d.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      connect(Mp1.B, Mp1.S)
        annotation (points=[30,20; 30,14],
                                        style(color=3, rgbcolor={0,0,255}));
      connect(VR1.p, Mp1.D)          annotation (points=[1.83691e-015,0; 0,10;
            0,40; 40,40; 40,26; 30,26],
                          style(color=3, rgbcolor={0,0,255}));
      connect(Mp1.G,VC1. p)              annotation (points=[10,14; -30,14; -30,
            0],   style(color=3, rgbcolor={0,0,255}));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(R1.p, Mp1.S) annotation (points=[40,0; 40,14; 30,14], style(color=
             3, rgbcolor={0,0,255}));
    end small_pmos1;

    model small_nfet1

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);

      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
      BondLib.Electrical.Analog.Spice.Jn Jn1(
        Level=1,
        VT0=1.1,
        LAMBDA=0.001,
        BETA=15e-3,
        IS=1e-15,
        PB=0.2,
        RS=0.5,
        RD=1.5,
        M=0.5,
        CGS=50e-15,
        CGD=50e-15,
        XTI=3,
        EG=1.11)                             annotation (extent=[10,8; 30,32]);
    equation
      connect(Ground1.p,VC1. n)              annotation (points=[-30,-30; -30,
            -25; -30,-20; -30,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p,VR1. n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      annotation (Diagram, experiment(Algorithm="Radau"),
        experimentSetupOutput,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
NJF characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

J1 2 1 3 Jbreakn

.MODEL Jbreakn NJF
+ level=1 VTO=1.1 LAMBDA=0.001 BETA=15e-3 IS=1e-15 PB=0.2
+ RS=0.5 RD=1.5 CGS=50e-15 CGD=50e-15 M=0.5 XTI=3

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_nfet1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_nfet1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_nfet1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<b>DASSL</b> <font color=blue><b>made slow progress on the simulation.  There are probably still a few chattering issues unresolved in the</b></font> <font color=red><b>BondLib</b></font> <b>JFET</b> <font color=blue><b>models.  Switching to</b></font> <b>Radau-IIa</b> <font color=blue><b>solved that problem.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/small_nfet1d.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(R1.p, Jn1.S) annotation (points=[40,0; 40,14; 30,14], style(color=
             3, rgbcolor={0,0,255}));
      connect(Jn1.D,VR1. p) annotation (points=[30,26; 40,26; 40,40;
            1.83691e-015,40; 1.83691e-015,0], style(color=3, rgbcolor={0,0,255}));
      connect(VC1.p, Jn1.G) annotation (points=[-30,0; -30,14; 10,14], style(
            color=3, rgbcolor={0,0,255}));
    end small_nfet1;

    model small_pfet1

      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=3)
        annotation (extent=[-40,-20; -20,0], rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(duration=1, V=3)
        annotation (extent=[-10,-20; 10,0],   rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);

      BondLib.Electrical.Analog.Spice.R R1(R=500)
        annotation (extent=[30,-20; 50,0],   rotation=-90);
      BondLib.Electrical.Analog.Spice.Jp Jp1(
        Level=1,
        IS=1e-15,
        RS=0.5,
        RD=1.5,
        BETA=15e-3,
        LAMBDA=0.001,
        XTI=3,
        CGS=50e-15,
        CGD=50e-15,
        M=0.5,
        PB=0.2,
        GminDC=1e-16,
        EMin=-100,
        EMax=40,
        VT0=-1.1,
        EG=1.11)  annotation (extent=[10,8; 30,32]);
    equation
      connect(Ground1.p,VC1. n)              annotation (points=[-30,-30; -30,
            -25; -30,-20; -30,-20],
          style(color=3, rgbcolor={0,0,255}));
      connect(Ground2.p,VR1. n)          annotation (points=[0,-30; 0,-20;
            -1.83691e-015,-20],style(color=3, rgbcolor={0,0,255}));
      annotation (Diagram, experiment,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PJF characteristics

VC1 1 0 3
VR1 2 0 pwl (0 0 1 3)
R1 3 0 500

J1 2 1 3 Jbreakp

.MODEL Jbreakp PJF
+ level=1 VTO=-1.1 LAMBDA=0.001 BETA=15e-3 IS=1e-15 PB=0.2
+ RS=0.5 RD=1.5 CGS=50e-15 CGD=50e-15 M=0.5 XTI=3

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_pfet1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_pfet1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_pfet1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are identical except for an initial transient that however is by no means short-lived.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/small_pfet1d.png\">
</html>"),
        Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      connect(R1.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(color=
             3, rgbcolor={0,0,255}));
      connect(Jp1.S, R1.p) annotation (points=[30,14; 40,14; 40,0], style(color=
             3, rgbcolor={0,0,255}));
      connect(VC1.p, Jp1.G) annotation (points=[-30,0; -30,14; 10,14], style(
            color=3, rgbcolor={0,0,255}));
      connect(Jp1.D, VR1.p) annotation (points=[30,26; 40,26; 40,40;
            1.83691e-015,40; 1.83691e-015,0], style(color=3, rgbcolor={0,0,255}));
    end small_pfet1;

  model small_pmos_pos

    BondLib.Electrical.Analog.Spice.Mp Mp1( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,82; -10,106]);

    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=1)
      annotation (extent=[20,90; 40,110]);
    annotation (Diagram, experiment(Algorithm="Dassl"),
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PMOS characteristics

VC1 1 0 1V
VC2 12 0 2V
VC3 13 0 3V
VC4 14 0 4V
VC5 15 0 5V
VR1 2 0 DC -5V PWL 0s -5V 1s 5V
VR2 4 0 DC -5V PWL 0s -5V 1s 5V
VR3 5 0 DC -5V PWL 0s -5V 1s 5V
VR4 6 0 DC -5V PWL 0s -5V 1s 5V
VR5 7 0 DC -5V PWL 0s -5V 1s 5V
IC1 3 0 DC 0A
IC2 8 0 DC 0A
IC3 9 0 DC 0A
IC4 10 0 DC 0A
IC5 11 0 DC 0A

M1 1 2 0 3 MbreakP-Y L=5e-6 W=100e-6
M2 12 4 0 8 MbreakP-Y L=5e-6 W=100e-6
M3 13 5 0 9 MbreakP-Y L=5e-6 W=100e-6
M4 14 6 0 10 MbreakP-Y L=5e-6 W=100e-6
M5 15 7 0 11 MbreakP-Y L=5e-6 W=100e-6

.MODEL MbreakP-Y PMOS
+ level=1 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_pmos_pos1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_pmos_pos1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_pmos_pos1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are qualitatively similar.  The difference must have been caused by another model parameter that uses different default values in the two environments and that hasn't been set explicity, but I don't know, which one that could be.</b></font> <p>

<font color=blue><b>Unfortunately, the default steady-state initialization leads to a divergence of the initial Newton iteration in this case:</b></font> <p>
<img src=\"../Images/small_pmos_pos1d.png\">
</html>"),
        Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))),
        experimentSetupOutput);
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,70; 60,90]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-90,68; -70,88]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-10,68; 10,88]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,78; -40,98],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp2( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,40; -10,64]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC2(V=2)
      annotation (extent=[20,48; 40,68]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[40,26; 60,46]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[-90,26; -70,46]);
    BondLib.Electrical.Analog.Basic.Ground Ground6
      annotation (extent=[-10,26; 10,46]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR2(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,36; -40,56],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp3( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-4; -10,20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC3(V=3)
      annotation (extent=[20,4; 40,24]);
    BondLib.Electrical.Analog.Basic.Ground Ground7
      annotation (extent=[40,-18; 60,2]);
    BondLib.Electrical.Analog.Basic.Ground Ground8
      annotation (extent=[-90,-18; -70,2]);
    BondLib.Electrical.Analog.Basic.Ground Ground9
      annotation (extent=[-10,-18; 10,2]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR3(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-8; -40,12],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp4( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-48; -10,-24]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC4(V=4)
      annotation (extent=[20,-40; 40,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground10
      annotation (extent=[40,-62; 60,-42]);
    BondLib.Electrical.Analog.Basic.Ground Ground11
      annotation (extent=[-90,-62; -70,-42]);
    BondLib.Electrical.Analog.Basic.Ground Ground12
      annotation (extent=[-10,-62; 10,-42]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR4(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-52; -40,-32],rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp5( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-92; -10,-68]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC5(V=5)
      annotation (extent=[20,-84; 40,-64]);
    BondLib.Electrical.Analog.Basic.Ground Ground13
      annotation (extent=[40,-106; 60,-86]);
    BondLib.Electrical.Analog.Basic.Ground Ground14
      annotation (extent=[-90,-106; -70,-86]);
    BondLib.Electrical.Analog.Basic.Ground Ground15
      annotation (extent=[-10,-106; 10,-86]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR5(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-96; -40,-76],rotation=180);
  equation
      connect(Mp1.D,VC1. p)            annotation (points=[-10,100; 20,100],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC1.n, Ground1.p)            annotation (points=[40,100; 50,100;
            50,90],
               style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.S, Ground3.p) annotation (points=[-10,88; 0,88],       style(
          color=3, rgbcolor={0,0,255}));
      connect(VR1.n, Ground2.p)          annotation (points=[-60,88; -80,88],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR1.p, Mp1.G)          annotation (points=[-40,88; -30,88],
                     style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.D,VC2. p)            annotation (points=[-10,58; 20,58],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC2.n, Ground4.p)            annotation (points=[40,58; 50,58; 50,
            46],
               style(color=3, rgbcolor={0,0,255}));
    connect(Mp2.S,Ground6. p) annotation (points=[-10,46; 0,46],       style(
          color=3, rgbcolor={0,0,255}));
      connect(VR2.n, Ground5.p)          annotation (points=[-60,46; -80,46],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR2.p, Mp2.G)          annotation (points=[-40,46; -30,46],
                     style(color=3, rgbcolor={0,0,255}));
      connect(Mp3.D,VC3. p)            annotation (points=[-10,14; 20,14],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC3.n, Ground7.p)            annotation (points=[40,14; 50,14; 50,
            2],style(color=3, rgbcolor={0,0,255}));
    connect(Mp3.S,Ground9. p) annotation (points=[-10,2; 0,2],         style(
          color=3, rgbcolor={0,0,255}));
      connect(VR3.n, Ground8.p)          annotation (points=[-60,2; -70,2; -70,
            2; -80,2], style(color=3, rgbcolor={0,0,255}));
      connect(VR3.p, Mp3.G)          annotation (points=[-40,2; -35,2; -35,2;
            -30,2], style(color=3, rgbcolor={0,0,255}));
      connect(Mp4.D,VC4. p)            annotation (points=[-10,-30; 20,-30],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC4.n, Ground10.p)           annotation (points=[40,-30; 50,-30;
            50,-42],
               style(color=3, rgbcolor={0,0,255}));
      connect(Mp4.S, Ground12.p)
                              annotation (points=[-10,-42; 0,-42],     style(
          color=3, rgbcolor={0,0,255}));
      connect(VR4.n, Ground11.p)          annotation (points=[-60,-42; -80,-42],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR4.p, Mp4.G)          annotation (points=[-40,-42; -30,-42],
                           style(color=3, rgbcolor={0,0,255}));
      connect(Mp5.D,VC5. p)            annotation (points=[-10,-74; 20,-74],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC5.n, Ground13.p)           annotation (points=[40,-74; 50,-74;
            50,-86],
               style(color=3, rgbcolor={0,0,255}));
      connect(Mp5.S, Ground15.p)
                              annotation (points=[-10,-86; 0,-86],     style(
          color=3, rgbcolor={0,0,255}));
      connect(VR5.n, Ground14.p)          annotation (points=[-60,-86; -80,-86],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR5.p, Mp5.G)          annotation (points=[-40,-86; -30,-86],
                           style(color=3, rgbcolor={0,0,255}));

  end small_pmos_pos;

  model small_pmos_neg

    BondLib.Electrical.Analog.Spice.Mp Mp1( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,82; -10,106]);

    BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-1)
      annotation (extent=[20,90; 40,110]);
    annotation (Diagram, experiment,
        Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
PMOS characteristics

VC1 10 0 -1V
VC2 8 0 -2V
VC3 6 0 -3V
VC4 4 0 -4V
VC5 2 0 -5V
VR1 9 0 DC -5V PWL 0s -5V 1s 5V
VR2 7 0 DC -5V PWL 0s -5V 1s 5V
VR3 5 0 DC -5V PWL 0s -5V 1s 5V
VR4 3 0 DC -5V PWL 0s -5V 1s 5V
VR5 1 0 DC -5V PWL 0s -5V 1s 5V

M1 10 9 0 0 MbreakP-Y L=5e-6 W=100e-6
M2 8 7 0 0 MbreakP-Y L=5e-6 W=100e-6
M3 6 5 0 0 MbreakP-Y L=5e-6 W=100e-6
M4 4 3 0 0 MbreakP-Y L=5e-6 W=100e-6
M5 2 1 0 0 MbreakP-Y L=5e-6 W=100e-6

.MODEL MbreakP-Y PMOS
+ level=1 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.0001 1 0 0.00185
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/small_pmos_neg1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/small_pmos_neg1b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/small_pmos_neg1c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are qualitatively similar.  The difference must have been caused by another model parameter that uses different default values in the two environments and that hasn't been set explicity, but I don't know, which one that could be.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/small_pmos_neg1d.png\">
</html>"),
        Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=6,
            rgbcolor={255,255,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1)),
        Text(
          extent=[-80,80; 80,-80],
          string="?",
          style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=6,
            rgbfillColor={255,255,0},
            fillPattern=1))));
    BondLib.Electrical.Analog.Basic.Ground Ground1
      annotation (extent=[40,70; 60,90]);
    BondLib.Electrical.Analog.Basic.Ground Ground2
      annotation (extent=[-90,68; -70,88]);
    BondLib.Electrical.Analog.Basic.Ground Ground3
      annotation (extent=[-10,68; 10,88]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR1(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,78; -40,98],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp2( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,40; -10,64]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC2(V=-2)
      annotation (extent=[20,48; 40,68]);
    BondLib.Electrical.Analog.Basic.Ground Ground4
      annotation (extent=[40,26; 60,46]);
    BondLib.Electrical.Analog.Basic.Ground Ground5
      annotation (extent=[-90,26; -70,46]);
    BondLib.Electrical.Analog.Basic.Ground Ground6
      annotation (extent=[-10,26; 10,46]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR2(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,36; -40,56],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp3( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-4; -10,20]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC3(V=-3)
      annotation (extent=[20,4; 40,24]);
    BondLib.Electrical.Analog.Basic.Ground Ground7
      annotation (extent=[40,-18; 60,2]);
    BondLib.Electrical.Analog.Basic.Ground Ground8
      annotation (extent=[-90,-18; -70,2]);
    BondLib.Electrical.Analog.Basic.Ground Ground9
      annotation (extent=[-10,-18; 10,2]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR3(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-8; -40,12],  rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp4( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-48; -10,-24]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC4(V=-4)
      annotation (extent=[20,-40; 40,-20]);
    BondLib.Electrical.Analog.Basic.Ground Ground10
      annotation (extent=[40,-62; 60,-42]);
    BondLib.Electrical.Analog.Basic.Ground Ground11
      annotation (extent=[-90,-62; -70,-42]);
    BondLib.Electrical.Analog.Basic.Ground Ground12
      annotation (extent=[-10,-62; 10,-42]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR4(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-52; -40,-32],rotation=180);
    BondLib.Electrical.Analog.Spice.Mp Mp5( Level=1,
  L=5e-6,
   W=100e-6,
   RD=1,
      RS=1,
  TPG=1,
  KP=2.33082e-5,
   LAMBDA=0.013333,
    GAMMA=0.60309,
     NSUB=4.9999999e16,
       LD=0.1e-6,
      PHI=1,
      PB=1,
      CJ=4.091e-4,
      MJ=0.307,
      CJSW=3.078e-10,
      CGD0=3.93e-10,
      CGS0=3.93e-10,
      VT0=0.69486,
        EG=1.11,
        CGB0=0,
        MJSW=0.3,
        TOX=1.98e-8,
        WD=0)                      annotation (extent=[-30,-92; -10,-68]);
    BondLib.Electrical.Analog.Sources.ConstantVoltage VC5(V=-5)
      annotation (extent=[20,-84; 40,-64]);
    BondLib.Electrical.Analog.Basic.Ground Ground13
      annotation (extent=[40,-106; 60,-86]);
    BondLib.Electrical.Analog.Basic.Ground Ground14
      annotation (extent=[-90,-106; -70,-86]);
    BondLib.Electrical.Analog.Basic.Ground Ground15
      annotation (extent=[-10,-106; 10,-86]);
    BondLib.Electrical.Analog.Sources.RampVoltage VR5(
        V=10,
        duration=1,
        offset=-5)
                 annotation (extent=[-60,-96; -40,-76],rotation=180);
  equation
      connect(Mp1.D,VC1. p)            annotation (points=[-10,100; 20,100],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC1.n, Ground1.p)            annotation (points=[40,100; 50,100;
            50,90],
               style(color=3, rgbcolor={0,0,255}));
      connect(VR1.n, Ground2.p)          annotation (points=[-60,88; -80,88],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR1.p, Mp1.G)          annotation (points=[-40,88; -30,88],
                     style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.D,VC2. p)            annotation (points=[-10,58; 20,58],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC2.n, Ground4.p)            annotation (points=[40,58; 50,58; 50,
            46],
               style(color=3, rgbcolor={0,0,255}));
      connect(VR2.n, Ground5.p)          annotation (points=[-60,46; -80,46],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR2.p, Mp2.G)          annotation (points=[-40,46; -30,46],
                     style(color=3, rgbcolor={0,0,255}));
      connect(Mp3.D,VC3. p)            annotation (points=[-10,14; 20,14],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC3.n, Ground7.p)            annotation (points=[40,14; 50,14; 50,
            2],style(color=3, rgbcolor={0,0,255}));
      connect(VR3.n, Ground8.p)          annotation (points=[-60,2; -70,2; -70,
            2; -80,2], style(color=3, rgbcolor={0,0,255}));
      connect(VR3.p, Mp3.G)          annotation (points=[-40,2; -35,2; -35,2;
            -30,2], style(color=3, rgbcolor={0,0,255}));
      connect(Mp4.D,VC4. p)            annotation (points=[-10,-30; 20,-30],
        style(color=3, rgbcolor={0,0,255}));
      connect(VC4.n, Ground10.p)           annotation (points=[40,-30; 50,-30;
            50,-42],
               style(color=3, rgbcolor={0,0,255}));
      connect(VR4.n, Ground11.p)          annotation (points=[-60,-42; -80,-42],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR4.p, Mp4.G)          annotation (points=[-40,-42; -30,-42],
                           style(color=3, rgbcolor={0,0,255}));
      connect(VC5.n, Ground13.p)           annotation (points=[40,-74; 50,-74;
            50,-86],
               style(color=3, rgbcolor={0,0,255}));
      connect(VR5.n, Ground14.p)          annotation (points=[-60,-86; -80,-86],
          style(color=3, rgbcolor={0,0,255}));
      connect(VR5.p, Mp5.G)          annotation (points=[-40,-86; -30,-86],
                           style(color=3, rgbcolor={0,0,255}));
      connect(Ground3.p, Mp1.S) annotation (points=[0,88; -10,88],
          style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.S, Ground6.p) annotation (points=[-10,46; 0,46],
          style(color=3, rgbcolor={0,0,255}));
      connect(Mp3.S, Ground9.p) annotation (points=[-10,2; 0,2],
          style(color=3, rgbcolor={0,0,255}));
      connect(Mp4.S, Ground12.p) annotation (points=[-10,-42; 0,-42],
                  style(color=3, rgbcolor={0,0,255}));
      connect(Mp5.S, Ground15.p) annotation (points=[-10,-86; 0,-86],
                  style(color=3, rgbcolor={0,0,255}));
      connect(Mp5.D,VC5. p)              annotation (points=[-10,-74; 20,-74],
                          style(color=3, rgbcolor={0,0,255}));
      connect(Mp2.B, Mp2.S) annotation (points=[-10,52; -10,46], style(color=3,
            rgbcolor={0,0,255}));
      connect(Mp1.B, Mp1.S) annotation (points=[-10,94; -10,88], style(color=3,
            rgbcolor={0,0,255}));
      connect(Mp3.B, Mp3.S)
        annotation (points=[-10,8; -10,2], style(color=3, rgbcolor={0,0,255}));
      connect(Mp4.B, Mp4.S) annotation (points=[-10,-36; -10,-42], style(color=
              3, rgbcolor={0,0,255}));
      connect(Mp5.B, Mp5.S) annotation (points=[-10,-80; -10,-86], style(color=
              3, rgbcolor={0,0,255}));
  end small_pmos_neg;

      package level1
        model cap1test0

            BondLib.Electrical.Analog.Spice.Mn Mn1(
              TPG=1,
          KP=2.33082e-5,
             LAMBDA=0.013333,
           VT0=0.69486,
           Level=1,
             LD=0.1e-6,
              CJ=4.091e-4,
              GAMMA=0.60309,
              PHI=1,
           MJ=0.307,
              TOX=1.98e-8,
              NSUB=4.9999999e16,
              PB=1,
              CJSW=3.078e-10,
              MJSW=0.3,
              CGD0=3.93e-10,
              CGS0=3.93e-10,
              RD=1,
              RS=1,
              L=5e-6,
              W=100e-6,
          WD=0,
          EG=1.11,
          CGB0=0)                                  annotation (extent=[-30,8;
              -10,32]);

            BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
          V=10,
          rising=1e-9,
          width=9e-9,
          falling=1e-9,
          period=20e-9,
          offset=0,
          startTime=0)
              annotation (extent=[-50,-20; -30,0],
                                                 rotation=270);
            BondLib.Electrical.Analog.Basic.Ground Ground1
              annotation (extent=[-50,-50; -30,-30]);
            annotation (Diagram, experiment(StopTime=1e-007),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns

C1 0 2 1.6p
C2 0 3 0.4p

M1 3 1 2 0 Mbreakn-Y L=5e-6 W=100e-6

.MODEL Mbreakn-Y NMOS
+ level=1 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test0a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/cap1test0b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/cap1test0c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are qualitatively similar.  The difference must have been caused by another model parameter that uses different default values in the two environments and that hasn't been set explicity, but I don't know, which one that could be.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Sakallah, K.A., Y.-T. Yen, and S.S. Greenberg (1990), \"A First-Order Charge Conserving MOS Capacitance Model,\" <i>IEEE Trans. Computer-aided Design</i>, <b>9</b>(1), pp.99-108.
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
            BondLib.Electrical.Analog.Basic.Ground Ground2
              annotation (extent=[-10,-50; 10,-30]);
            BondLib.Electrical.Analog.Basic.Ground Ground3
              annotation (extent=[30,-50; 50,-30]);
            BondLib.Electrical.Analog.Basic.Ground Ground4
              annotation (extent=[10,-50; 30,-30]);
        BondLib.Electrical.Analog.Spice.C C1(C=1.6e-12, u0=6.92217927206452E-19)
          annotation (extent=[-10,-20; 10,0], rotation=-90);
        BondLib.Electrical.Analog.Spice.C C2(C=0.4e-12, u0=6.17934264765835E-19)
          annotation (extent=[30,-20; 50,0], rotation=-90);
        equation
        connect(VT1.n, Ground1.p)
              annotation (points=[-40,-20; -40,-30],
                                                   style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VT1.p)                   annotation (points=[-30,14; -40,
              14; -40,0],  style(color=3, rgbcolor={0,0,255}));
            connect(Ground4.p, Mn1.B) annotation (points=[20,-30; 20,20; -10,20],
                                                                                style(
                  color=3, rgbcolor={0,0,255}));
        connect(C1.p, Mn1.S) annotation (points=[-6.12303e-016,0; 0,0; 0,14;
              -10,14], style(color=3, rgbcolor={0,0,255}));
        connect(C1.n, Ground2.p) annotation (points=[6.12303e-016,-20;
              6.12303e-016,-25; 0,-25; 0,-30], style(color=3, rgbcolor={0,0,255}));
        connect(C2.n, Ground3.p) annotation (points=[40,-20; 40,-30], style(
              color=3, rgbcolor={0,0,255}));
        connect(C2.p, Mn1.D) annotation (points=[40,0; 40,26; -10,26], style(
              color=3, rgbcolor={0,0,255}));
        end cap1test0;

        model cap1test1

          BondLib.Electrical.Analog.Spice.Mn Mn1(Level=1,
        L=5e-6,
         W=100e-6,
         RD=1,
            RS=1,
        TPG=1,
        KP=2.33082e-5,
         LAMBDA=0.013333,
         VT0=0.69486,
          GAMMA=0.60309,
        TOX=1.98e-8,
           NSUB=4.9999999e16,
             LD=0.1e-6,
            PHI=1,
            PB=1,
            CJ=4.091e-4,
            MJ=0.307,
            CJSW=3.078e-10,
            CGD0=3.93e-10,
            CGS0=3.93e-10,
          WD=0,
          EG=1.11,
          CGB0=0,
          MJSW=0.3)
         annotation (extent=[-10,18; 10,42]);

          BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
          V=10,
          rising=1e-9,
          width=9e-9,
          falling=1e-9,
          period=20e-9,
          offset=0,
          startTime=0)
            annotation (extent=[-30,-10; -10,10],
                                               rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-30,-40; -10,-20]);
          annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns
C1 0 2 0.5p

M1 2 1 2 2 Mbreakn-Y L=5e-6 W=100e-6

.MODEL Mbreakn-Y NMOS
+ level=1 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test1a.png\"> <p>

<font color=blue><b>This circuit doesn't compile in</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/cap1test1b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/cap1test1c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/cap1test1d.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[10,-40; 30,-20]);
        BondLib.Electrical.Analog.Spice.C C1(C=0.5e-12)
          annotation (extent=[10,-10; 30,10], rotation=-90);
        equation
        connect(VT1.n, Ground1.p)
            annotation (points=[-20,-10; -20,-15; -20,-15; -20,-20],
                                                 style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VT1.p)                 annotation (points=[-10,24; -20,
              24; -20,10],
                         style(color=3, rgbcolor={0,0,255}));
        connect(C1.n, Ground2.p) annotation (points=[20,-10; 20,-20], style(
              color=3, rgbcolor={0,0,255}));
        connect(C1.p, Mn1.S) annotation (points=[20,10; 20,24; 10,24], style(
              color=3, rgbcolor={0,0,255}));
        connect(C1.p, Mn1.B) annotation (points=[20,10; 20,30; 10,30], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, C1.p) annotation (points=[10,36; 20,36; 20,10], style(
              color=3, rgbcolor={0,0,255}));
        end cap1test1;

        model mos1test1

          BondLib.Electrical.Analog.Spice.Mn Mn1(
              L=5e-6,
              W=2e-6,
              AD=100e-12,
              PD=40e-6,
              AS=100e-12,
              PS=40e-6,
              RD=1,
              RS=1,
              NSUB=4.9999999e16,
          Level=1)                               annotation (extent=[-10,-2; 10,
              22]);
          annotation (Diagram, experiment(StopTime=2e-007, Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VT1 4 0 PWL 0ns 0V 20ns 5V 60ns -5V 100ns 5V 120ns 5V 160ns -6V 200ns 5V
VT2 2 0 PWL 0ns 0V 20ns -10V 100ns 10V 120ns -10V 200ns 10V

R1 5 4 800k
R2 2 1 3
R3 3 0 7

M1 5 1 3 3 Mbreakn L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn NMOS level=1 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 200n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test1b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos1test1c.png\"> <p> <p>

<font color=blue><b>When the source resistor,</b></font> <b>R3</b><font color=blue><b>, is set to</b></font> <b>R3 = 0</b><font color=blue><b>, the circuit simulates without any difficulties.  Cf. also circuit</b></font> <b>mos1test3</b><font color=blue><b>, which exhibits the same error.  That circuit may be a bit easier to analyze.</b></font> <p>

<font color=blue><b>For further analysis, it may be useful to set the modeling level back to the much simpler</b></font> <b>level=0</b> <font color=blue><b>model that is of similar complexity as the MOSFET model of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  The behavior is the same as for the</b></font> <b>level=1</b> <font color=blue><b>model.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 20e-9,
              5; 60e-9,-5; 100e-9,5; 120e-9,5; 160e-9,-6; 200e-9,5])
                                                     annotation (extent=[50,20;
              70,40]);
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[70,10; 90,30]);
          BondLib.Electrical.Analog.Sources.TableVoltage VT2(table=[0,0; 20e-9,
              -10; 100e-9,10; 120e-9,-10; 200e-9,10])
            annotation (extent=[-70,14; -50,-6],  rotation=180);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-90,-40; -70,-20]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[40,-40; 60,-20]);
          BondLib.Electrical.Analog.Spice.R R1(R=8e5)
            annotation (extent=[20,20; 40,40],   rotation=0);
          BondLib.Electrical.Analog.Spice.R R2(R=3)
            annotation (extent=[-40,-6; -20,14], rotation=0);
          BondLib.Electrical.Analog.Spice.R R3(R=7)
            annotation (extent=[20,-20; 40,0],   rotation=0);
        equation
        connect(VT1.n, Ground1.p)             annotation (points=[70,30; 80,30], style(
              color=3,
              rgbcolor={0,0,255},
              fillPattern=1));
        connect(VT2.n, Ground2.p)               annotation (points=[-70,4; -80,
              4; -80,-20],  style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(Mn1.B, Mn1.S) annotation (points=[10,10; 10,4],
                                                                 style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
        connect(R1.n, VT1.p) annotation (points=[40,30; 50,30], style(color=3,
              rgbcolor={0,0,255}));
        connect(R1.p, Mn1.D) annotation (points=[20,30; 10,30; 10,16], style(
              color=3, rgbcolor={0,0,255}));
        connect(R2.n, Mn1.G) annotation (points=[-20,4; -10,4], style(color=3,
              rgbcolor={0,0,255}));
        connect(R2.p, VT2.p) annotation (points=[-40,4; -46,4; -46,4; -50,4],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.S, R3.p) annotation (points=[10,4; 10,-10; 20,-10], style(
              color=3, rgbcolor={0,0,255}));
        connect(R3.n, Ground3.p) annotation (points=[40,-10; 50,-10; 50,-20],
            style(color=3, rgbcolor={0,0,255}));
        end mos1test1;

        model mos1test1_II

          annotation (Diagram(
                    Text(
                extent=[-90,100; 90,80],
                style(color=42, rgbcolor={127,0,0}),
              string="Using components of the standard library:"),    Line(points=[-86,82;
                  86,82],           style(color=42, rgbcolor={127,0,0}))),
                               experiment(StopTime=2e-007, Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate either using component models of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos1test1d.png\"> <p>

<font color=blue><b>However, this error is different.  It is of a numerical rather than structural nature.  Contrary to the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>model, this error doesn't go away even for</b></font> <b>R3=0</b><font color=blue><b>.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[70,10; 90,30]);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-90,-40; -70,-20]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[40,-40; 60,-20]);
        Modelica.Electrical.Analog.Basic.Resistor R1(R=8e5)
          annotation (extent=[20,20; 40,40]);
        Modelica.Electrical.Analog.Basic.Resistor R2(R=3)
          annotation (extent=[-40,-6; -20,14]);
        Modelica.Electrical.Analog.Basic.Resistor R3(R=7)
          annotation (extent=[20,-20; 40,0]);
        Modelica.Electrical.Analog.Semiconductors.NMOS Mn1(W=2e-6, L=5e-6)
          annotation (extent=[-10,-2; 10,22]);
        Modelica.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 20e-9,5;
              60e-9,-5; 100e-9,5; 120e-9,5; 160e-9,-6; 200e-9,5])
          annotation (extent=[50,20; 70,40]);
        Modelica.Electrical.Analog.Sources.TableVoltage VT2(table=[0,0; 20e-9,-10;
              100e-9,10; 120e-9,-10; 200e-9,10])
          annotation (extent=[-70,-6; -50,14]);
        equation
        connect(R3.n, Ground3.p) annotation (points=[40,-10; 50,-10; 50,-20],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, Mn1.S) annotation (points=[10,10; 10,4], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.G, R2.n) annotation (points=[-10,4; -20,4], style(color=3,
              rgbcolor={0,0,255}));
        connect(R3.p, Mn1.S) annotation (points=[20,-10; 10,-10; 10,4], style(
              color=3, rgbcolor={0,0,255}));
        connect(R1.p, Mn1.D) annotation (points=[20,30; 10,30; 10,16], style(
              color=3, rgbcolor={0,0,255}));
        connect(VT1.n, Ground1.p) annotation (points=[70,30; 80,30], style(
              color=3, rgbcolor={0,0,255}));
        connect(VT1.p, R1.n) annotation (points=[50,30; 40,30], style(color=3,
              rgbcolor={0,0,255}));
        connect(VT2.n, R2.p) annotation (points=[-50,4; -40,4], style(color=3,
              rgbcolor={0,0,255}));
        connect(VT2.p, Ground2.p) annotation (points=[-70,4; -80,4; -80,-20],
            style(color=3, rgbcolor={0,0,255}));
        end mos1test1_II;

        model mos1test2

          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-10,-70; 10,-50]);
          BondLib.Electrical.Analog.Spice.Mp Mp1(
        L=4.9e-6,
            W=5.2e-6,
                 RD=1, RS=1, TPG=-1,
         GAMMA=1.211640,     THETA=0.1184638,    KAPPA=0.2162577,    ETA=2.7580135E-02,
                             U0=89.16160,                            VT0=-0.8,
                             XJ=0.4e-6,            LD=0.28e-6,           NSUB=4.9999999E+17,
         CJ=6.852E-4,        MJ=0.429,
         CJSW=5.217E-10,     MJSW=0.351,
         CGS0=7.29E-10,      CGD0=7.29E-10,
          Level=1,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          VMAX=5.9E+07)     annotation (extent=[10,28; 30,52]);

          BondLib.Electrical.Analog.Spice.Mn Mn1(
            L=4.9e-6,
            W=5.2e-6,
                   RD=1, RS=1, TPG=1,
         GAMMA=1.140501,     THETA=0.8109787,    KAPPA=0.1579183,    ETA=5.0622310E-02,
                             U0=812.5126,        VMAX=1186662,      VT0=0.8,
                             XJ=0.2e-6,            LD=0.1e-6,            NSUB=4.9999999E+16,
         CJ=4.091E-4,        MJ=0.307,
         CJSW=3.078E-10,
         CGS0=3.93E-10,      CGD0=3.93E-10,
          Level=1,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          MJSW=0.3)                     annotation (extent=[10,-12; 30,12]);

          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[30,-70; 50,-50]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[-40,-70; -20,-50]);
          BondLib.Electrical.Analog.Spice.R R1(R=3)
            annotation (extent=[-40,20; -20,40], rotation=-90);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                       annotation (extent=[-40,-40; -20,-20],rotation=270);
          BondLib.Electrical.Analog.Sources.RampVoltage VR2(V=5, duration=
              100e-9)  annotation (extent=[-10,-40; 10,-20], rotation=270);
        equation
          connect(Mn1.B,Mn1. S)
            annotation (points=[30,0; 30,-6],  style(color=3, rgbcolor={0,0,255}));
          connect(Mp1.B,Mp1. D)
            annotation (points=[30,40; 30,46], style(color=3, rgbcolor={0,0,255}));
          annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 4 0 PWL 0ns 0V 1ns 5V
VR2 1 0 PWL 0ns 0V 100ns 5V
R1 4 3 3

M1 2 1 0 0 Mbreakn L=4.9u W=5.2u
M23 1 2 3 Mbreakp L=4.9u W=5.2u

.MODEL Mbreakn NMOS
+ level=1 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 UO=812.5126e4
+ VTO=0.8 LD=0.1u GAMMA=1.140501 PB=1 RD=1 RS=1 CJ=4.091e-4 MJ=0.307
+ CJSW=3.078e-10 MJSW=0.3 CGDO=3.93e-10 CGSO=3.93e-10 XJ=0.2u
+ VMAX=1186662 KAPPA=0.1579183 ETA=5.0622310E-02 THETA=0.8109787

.MODEL Mbreakp PMOS
+ level=1 TPG=-1 TOX=1.98e-8 NSUB=4.9999999e11 UO=89.16160e4
+ VTO=-0.8 LD=0.28u GAMMA=1.211640 PB=1 RD=1 RS=1 CJ=6.852e-4 MJ=0.429
+ CJSW=5.217e-10 MJSW=0.351 CGDO=7.29e-10 CGSO=7.29e-10 XJ=0.4u
+ VMAX=5.9e7 KAPPA=0.2162577 ETA=2.7580135E-02 THETA=0.1184638

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test2a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test2b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos1test2c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Some parameters (</b></font><b>NSUB</b> <font color=blue><b>and</b></font> <b>U0</b><font color=blue><b>) assume different numerical values in</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>as they are specified in different units.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
          connect(Mn1.S, Ground2.p)
            annotation (points=[30,-6; 40,-6; 40,-50],
                                                 style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, Mp1.S) annotation (points=[30,6; 40,6; 40,34; 30,34],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, R1.p) annotation (points=[30,46; 40,46; 40,60; -30,60;
              -30,40], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground3.p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.p, R1.n) annotation (points=[-30,-20; -30,0; -30,0; -30,20],
            style(color=3, rgbcolor={0,0,255}));
        connect(VR2.n, Ground1.p) annotation (points=[-1.83691e-015,-40; 0,-40;
              0,-50], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VR2.p) annotation (points=[10,-6; 1.83691e-015,-6;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, VR2.p) annotation (points=[10,34; 1.83691e-015,34;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
        end mos1test2;

        model mos1test3

          BondLib.Electrical.Analog.Spice.Mn Mn1(
            L=5e-6,
            W=2e-6,
            RD=1,
            RS=1,
            NSUB=4.9999999e16,
          AD=100e-12,
          PD=40e-6,
          AS=100e-12,
          PS=40e-6,
          Level=1)                               annotation (extent=[-10,28; 10,
              52]);
          annotation (Diagram, experiment(StopTime=4e-008, Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -1V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakn L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn NMOS level=1 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test3a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test3b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos1test3c.png\"> <p>

<font color=blue><b>When the bulk resistor,</b></font> <b>R4</b><font color=blue><b>, is set to</b></font> <b>R4 = 0</b><font color=blue><b>, the circuit simulates without any difficulties.  The observation makes no sense, because</b></font> <b>R4</b> <font color=blue><b>is placed in series with another very large resistor,</b></font> <b>Rgb</b><font color=blue><b>.  Yet, it is a structural and not a numerical problem, because the simulation dies for all values of</b></font> <b>R4</b> <font color=blue><b>except</b></font> <b>R4 = 0</b><font color=blue><b>.  Somehow, the compiler gets confused.</b></font> <p>

<font color=blue><b>For further analysis, it may be useful to set the modeling level back to the much simpler</b></font> <b>level=0</b> <font color=blue><b>model that is of similar complexity as the MOSFET model of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  The behavior is the same as for the</b></font> <b>level=1</b> <font color=blue><b>model.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-60,-60; -40,-40]);
          BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
              10e-9,-5; 30e-9,5])
            annotation (extent=[-30,-30; -10,-10],
                                               rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-30,-60; -10,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[10,-60; 30,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground4
            annotation (extent=[40,-60; 60,-40]);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-1)
                       annotation (extent=[-60,-30; -40,-10],rotation=270);
          BondLib.Electrical.Analog.Spice.R R1(R=8e5)
            annotation (extent=[-60,0; -40,20],  rotation=-90);
          BondLib.Electrical.Analog.Spice.R R2(R=3)
            annotation (extent=[-30,0; -10,20],  rotation=-90);
          BondLib.Electrical.Analog.Spice.R R3(R=4)
            annotation (extent=[10,0; 30,20],    rotation=-90);
          BondLib.Electrical.Analog.Spice.R R4(R=7)
            annotation (extent=[40,0; 60,20],    rotation=-90);
        equation
        connect(Ground2.p, VT1.n)             annotation (points=[-20,-40; -20,
              -35; -20,-30; -20,-30],
              style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground1.p) annotation (points=[-50,-30; -50,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(R1.n, VR1.p) annotation (points=[-50,0; -50,-10], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.D, R1.p) annotation (points=[10,46; 20,46; 20,60; -50,60;
              -50,20], style(color=3, rgbcolor={0,0,255}));
        connect(R2.n, VT1.p) annotation (points=[-20,0; -20,-5; -20,-10; -20,
              -10], style(color=3, rgbcolor={0,0,255}));
        connect(R2.p, Mn1.G) annotation (points=[-20,20; -20,34; -10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R3.n, Ground3.p) annotation (points=[20,0; 20,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(R3.p, Mn1.S) annotation (points=[20,20; 20,34; 10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R4.n, Ground4.p) annotation (points=[50,0; 50,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(R4.p, Mn1.B) annotation (points=[50,20; 50,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        end mos1test3;

        model mos1test3_II

          annotation (Diagram(
                    Text(
                extent=[-90,100; 90,80],
                style(color=42, rgbcolor={127,0,0}),
              string="Using components of the standard library:"),    Line(points=[-86,82;
                  86,82],           style(color=42, rgbcolor={127,0,0}))),
                               experiment(StopTime=4e-008, Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate either using component models of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos1test3d.png\"> <p>

<font color=blue><b>However, this error is different.  It is of a numerical rather than structural nature.  Contrary to the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>model, this error doesn't go away even for</b></font> <b>R4=0</b><font color=blue><b>.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-60,-60; -40,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-30,-60; -10,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[10,-60; 30,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground4
            annotation (extent=[40,-60; 60,-40]);
        Modelica.Electrical.Analog.Basic.Resistor R1(R=8e5)
          annotation (extent=[-60,0; -40,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R2(R=3)
          annotation (extent=[-30,0; -10,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R3(R=4)
          annotation (extent=[10,0; 30,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R4(R=7)
          annotation (extent=[40,0; 60,20], rotation=-90);
        Modelica.Electrical.Analog.Sources.RampVoltage VR1(V=-1, duration=1e-9)
          annotation (extent=[-60,-30; -40,-10], rotation=-90);
        Modelica.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
              10e-9,-5; 30e-9,5])
          annotation (extent=[-30,-30; -10,-10], rotation=-90);
        Modelica.Electrical.Analog.Semiconductors.NMOS Mn1(W=2e-6, L=5e-6)
          annotation (extent=[-10,28; 10,52]);
        equation
        connect(R3.n, Ground3.p) annotation (points=[20,0; 20,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(R4.n, Ground4.p) annotation (points=[50,0; 50,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground1.p) annotation (points=[-50,-30; -50,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VR1.p, R1.n) annotation (points=[-50,-10; -50,0], style(color=3,
              rgbcolor={0,0,255}));
        connect(VT1.n, Ground2.p) annotation (points=[-20,-30; -20,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VT1.p, R2.n) annotation (points=[-20,-10; -20,0], style(color=3,
              rgbcolor={0,0,255}));
        connect(R3.p, Mn1.S) annotation (points=[20,20; 20,34; 10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R4.p, Mn1.B) annotation (points=[50,20; 50,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, R2.p) annotation (points=[-10,34; -20,34; -20,20], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, R1.p) annotation (points=[10,46; 20,46; 20,60; -50,60;
              -50,20], style(color=3, rgbcolor={0,0,255}));
        end mos1test3_II;

        model mos1test4

          BondLib.Electrical.Analog.Spice.Mn Mn1(
            L=1e-6,
            W=2e-6,
            AD=100e-12,
            AS=100e-12,
            RD=1,
            RS=1,
          Level=1,
          EG=1.11,
          PD=40e-6,
          PS=40e-6)                              annotation (extent=[10,8; 30,
              32]);
          BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
            annotation (extent=[-40,-20; -20,0],
                                             rotation=270);
          annotation (Diagram, experiment(StopTime=1e-008),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 5V
VR1 2 0 PWL 0ns -10V 15ns 15V

M1 1 2 0 0 Mbreakp L=1u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp PMOS level=1 RS=1 RD=1

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test4a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test4b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos1test4c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos1test4d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice-3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look almost identical to those obtained by</b></font> <font color=red><b>Berkeley Spice-3g</b></font> <font color=blue><b>except for a fast initial transient.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/mos1test4e.png\">
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-40,-50; -20,-30]);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-10,-50; 10,-30]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[30,-50; 50,-30]);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(
          V=25,
          offset=-10,
          duration=15e-9)
                       annotation (extent=[-10,-20; 10,0],   rotation=270);
        equation
        connect(Mn1.D, VC1.p)                annotation (points=[30,26; 40,26;
              40,40; -30,40; -30,0],
                              style(color=3, rgbcolor={0,0,255}));
        connect(VC1.n, Ground1.p)
            annotation (points=[-30,-20; -30,-25; -30,-25; -30,-30],
                                                   style(color=3, rgbcolor={0,0,255}));
          connect(Mn1.S, Ground3.p)
            annotation (points=[30,14; 40,14; 40,-30],
                                                style(color=3, rgbcolor={0,0,255}));
          connect(Mn1.B, Mn1.S)
            annotation (points=[30,20; 30,14],style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground2.p) annotation (points=[-1.83691e-015,-20;
              -1.83691e-015,-25; 0,-25; 0,-30],
                                  style(color=3, rgbcolor={0,0,255}));
        connect(VR1.p, Mn1.G) annotation (points=[1.83691e-015,0; 1.83691e-015,
              14; 10,14], style(color=3, rgbcolor={0,0,255}));
        end mos1test4;

        model mos1test5

          BondLib.Electrical.Analog.Spice.Mp Mp1(
            L=5e-6,
            W=2e-6,
            AD=100e-12,
            PD=40e-6,
            AS=100e-12,
            PS=40e-6,
            RD=1,
            RS=1,
            NSUB=4.9999999e16,
          Level=1)                               annotation (extent=[-10,28; 10,
              52]);
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-60,-60; -40,-40]);
          BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
              10e-9,-5; 30e-9,5])
            annotation (extent=[-30,-30; -10,-10],
                                               rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-30,-60; -10,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[10,-60; 30,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground4
            annotation (extent=[40,-60; 60,-40]);
          BondLib.Electrical.Analog.Spice.R R1(R=8e5)
            annotation (extent=[-60,0; -40,20],  rotation=-90);
          BondLib.Electrical.Analog.Spice.R R4(R=7)
            annotation (extent=[40,0; 60,20],    rotation=-90);
          BondLib.Electrical.Analog.Spice.R R3(R=4)
            annotation (extent=[10,0; 30,20],    rotation=-90);
          BondLib.Electrical.Analog.Spice.R R2(R=3)
            annotation (extent=[-30,0; -10,20],  rotation=-90);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-10)
                       annotation (extent=[-60,-30; -40,-10],rotation=270);
        equation
        connect(Ground2.p, VT1.n)
            annotation (points=[-20,-40; -20,-35; -20,-30; -20,-30],
                                                   style(color=3, rgbcolor={0,0,255}));
          annotation (experiment(StopTime=4e-008), Diagram,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -10V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakp L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp PMOS level=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test5a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test5b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos1test5c.png\"> <p>

<font color=blue><b>When the bulk resistor,</b></font> <b>R4</b><font color=blue><b>, is set to</b></font> <b>R4 = 0</b><font color=blue><b>, the circuit simulates without any difficulties.  The observation makes no sense, because</b></font> <b>R4</b> <font color=blue><b>is placed in series with another very large resistor,</b></font> <b>Rgb</b><font color=blue><b>.  Yet, it is a structural and not a numerical problem, because the simulation dies for all values of</b></font> <b>R4</b> <font color=blue><b>except</b></font> <b>R4 = 0</b><font color=blue><b>.  Somehow, the compiler gets confused.</b></font> <p>

<font color=blue><b>For further analysis, it may be useful to set the modeling level back to the much simpler</b></font> <b>level=0</b> <font color=blue><b>model that is of similar complexity as the MOSFET model of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  The behavior is the same as for the</b></font> <b>level=1</b> <font color=blue><b>model.</b></font>
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
        connect(R1.p, Mp1.D) annotation (points=[-50,20; -50,60; 20,60; 20,46;
              10,46], style(color=3, rgbcolor={0,0,255}));
        connect(R2.n, VT1.p) annotation (points=[-20,0; -20,-5; -20,-10; -20,
              -10], style(color=3, rgbcolor={0,0,255}));
        connect(R2.p, Mp1.G) annotation (points=[-20,20; -20,34; -10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R3.p, Mp1.S) annotation (points=[20,20; 20,34; 10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R3.n, Ground3.p) annotation (points=[20,0; 20,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(R4.p, Mp1.B) annotation (points=[50,20; 50,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        connect(R4.n, Ground4.p) annotation (points=[50,0; 50,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground1.p) annotation (points=[-50,-30; -50,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VR1.p, R1.n) annotation (points=[-50,-10; -50,0], style(color=3,
              rgbcolor={0,0,255}));
        end mos1test5;

        model mos1test5_II

          annotation (experiment(StopTime=4e-008), Diagram(
                    Text(
                extent=[-90,100; 90,80],
                style(color=42, rgbcolor={127,0,0}),
              string="Using components of the standard library:"),    Line(points=[-86,82;
                  86,82],           style(color=42, rgbcolor={127,0,0}))),
          Documentation(info="<html>
<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit simulates without any problems using component models of the</b></font> <font color=red><b>Modelica standard library</b></font><font color=blue><b>.  Unfortunately, the results obtained bear no similarity at all with those produced by either</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/mos1test5d.png\"> <p>

<font color=blue><b>or</b></font> <font color=red><b>Berkeley Spice3g</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/mos1test5e.png\">
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=6,
                  rgbcolor={255,255,0},
                  fillColor=6,
                  rgbfillColor={255,255,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=6,
                  rgbcolor={255,255,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=6,
                  rgbcolor={255,255,0},
                  fillColor=6,
                  rgbfillColor={255,255,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="?",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=6,
                  rgbfillColor={255,255,0},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-60,-60; -40,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-30,-60; -10,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[10,-60; 30,-40]);
          BondLib.Electrical.Analog.Basic.Ground Ground4
            annotation (extent=[40,-60; 60,-40]);
        Modelica.Electrical.Analog.Basic.Resistor R1(R=8e5)
          annotation (extent=[-60,0; -40,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R2(R=3)
          annotation (extent=[-30,0; -10,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R3(R=4)
          annotation (extent=[10,0; 30,20], rotation=-90);
        Modelica.Electrical.Analog.Basic.Resistor R4(R=7)
          annotation (extent=[40,0; 60,20], rotation=-90);
        Modelica.Electrical.Analog.Sources.RampVoltage VR1(V=-1, duration=1e-9)
          annotation (extent=[-60,-30; -40,-10], rotation=-90);
        Modelica.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
              10e-9,-5; 30e-9,5])
          annotation (extent=[-30,-30; -10,-10], rotation=-90);
        Modelica.Electrical.Analog.Semiconductors.PMOS Mp1(W=2e-6, L=5e-6)
          annotation (extent=[-10,28; 10,52]);
        equation
        connect(R3.n, Ground3.p) annotation (points=[20,0; 20,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(R4.n, Ground4.p) annotation (points=[50,0; 50,-40], style(color=
               3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground1.p) annotation (points=[-50,-30; -50,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VR1.p, R1.n) annotation (points=[-50,-10; -50,0], style(color=3,
              rgbcolor={0,0,255}));
        connect(VT1.n, Ground2.p) annotation (points=[-20,-30; -20,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VT1.p, R2.n) annotation (points=[-20,-10; -20,0], style(color=3,
              rgbcolor={0,0,255}));
        connect(R3.p, Mp1.S) annotation (points=[20,20; 20,34; 10,34], style(
              color=3, rgbcolor={0,0,255}));
        connect(R4.p, Mp1.B) annotation (points=[50,20; 50,40; 10,40], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, R2.p) annotation (points=[-10,34; -20,34; -20,20], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, R1.p) annotation (points=[10,46; 20,46; 20,60; -50,60;
              -50,20], style(color=3, rgbcolor={0,0,255}));
        end mos1test5_II;

        model mos1test6

          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[-10,-70; 10,-50]);
          BondLib.Electrical.Analog.Spice.Mp Mp1(
        W=5.2e-6, L=1.2e-6,
        Level=1, RD=1, RS=1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
                                      LD=0.28e-6,           NSUB=4.9999999E+17,
        CJ=6.852E-3,        MJ=0.429,
        CJSW=5.217E-9,    MJSW=0.351,
        CGS0=7.29E-9,      CGD0=7.29E-9,
          TOX=1.98E-08,
          EG=1.11,
          PB=1)                  annotation (extent=[20,42; 40,18]);

          BondLib.Electrical.Analog.Spice.Mn Mn1(
        W=5.2e-6, L=1.2e-6,
        Level=1, RD=1, RS=1,
        KP=2.33082E-05,  LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
                                       LD=0.1e-6,           NSUB=4.9999999E+16,
        CJ=4.091E-3,        MJ=0.307,
        CJSW=3.078E-9,
        CGS0=3.93E-9,      CGD0=3.93E-9,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          MJSW=0.3)              annotation (extent=[20,-12; 40,12]);

          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[40,-70; 60,-50]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[-40,-70; -20,-50]);
          BondLib.Electrical.Analog.Spice.R R1(R=3)
            annotation (extent=[-40,10; -20,30], rotation=-90);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                       annotation (extent=[-40,-40; -20,-20],rotation=270);
        BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
          V=5,
          rising=1e-9,
          width=9e-9,
          falling=1e-9,
          period=30e-9,
          nperiod=1,
          startTime=10e-9) annotation (extent=[-10,-40; 10,-20], rotation=-90);
        equation
          connect(Mn1.B,Mn1. S)
            annotation (points=[40,0; 40,-6],  style(color=3, rgbcolor={0,0,255}));
          connect(Mn1.S,Ground2. p)
            annotation (points=[40,-6; 50,-6; 50,-50],
                                                 style(color=3, rgbcolor={0,0,255}));
          annotation (experiment(StopTime=3e-008), Diagram,
          Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 2 0 PWL 0ns 0V 1ns 5V
VR2 3 0 PWL 0ns 0V 10ns 0V 11ns 5V 20ns 5V 21ns 0V
R1 2 1 3

M1 4 3 0 0 Mbreakn1 L=1.2u W=5.2u
M2 4 3 1 1 Mbreakp1 L=1.2u W=5.2u

.MODEL Mbreakn1 NMOS
+ level=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1u KP=2.33082E-05 GAMMA=0.60309 PB=1 RD=1 RS=1 CJ=4.091e-3
+ MJ=0.307 CJSW=3.078e-9 MJSW=0.3 CGDO=3.93e-9 CGSO=3.93e-9


.MODEL Mbreakp1 PMOS
+ level=1 TOX=1.98e-8 NSUB=4.9999999e11 VTO=-0.60865 LAMBDA=0.018966
+ LD=0.28u KP=7.69968E-06 GAMMA=0.89213 PHI=1 PB=1 RD=1 RS=1 CJ=6.852e-3
+ MJ=0.429 CJSW=5.217e-9 MJSW=0.351 CGDO=7.29e-9 CGSO=7.29e-9


.TRAN 0.1n 30n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test6a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test6b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos1test6d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Originally, the trapezoidal source</b></font> <b>VT1</b> <font color=blue><b>had been programmed as a</b></font> <b>tabular voltage source</b><font color=blue><b>.  That type of source is built in</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>from discrete signals.  Since the voltage had to be differentiated during compilation, the translation died with the following error message:</b></font> <p>
<img src=\"../Images/mos1test6c.png\">
</html>"));
          connect(Mp1.B, Mp1.S)
            annotation (points=[40,30; 40,36], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.S, R1.p) annotation (points=[40,36; 50,36; 50,60; -30,60; -30,30],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, Mn1.D) annotation (points=[40,24; 50,24; 50,6; 40,6],
            style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground3.p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50],                                                  style(
              color=3, rgbcolor={0,0,255}));
        connect(VR1.p, R1.n) annotation (points=[-30,-20; -30,-5; -30,-5; -30,
              10],                                                 style(color=
                3, rgbcolor={0,0,255}));
        connect(VT1.n, Ground1.p) annotation (points=[6.12303e-016,-40;
              6.12303e-016,-46; 0,-46; 0,-50], style(color=3, rgbcolor={0,0,255}));
        connect(VT1.p, Mn1.G) annotation (points=[-6.12303e-016,-20;
              -6.12303e-016,-6; 20,-6], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, VT1.p) annotation (points=[20,36; -6.12303e-016,36;
              -6.12303e-016,-20], style(color=3, rgbcolor={0,0,255}));
        end mos1test6;

        model mos1test7
        model NDINV

              BondLib.Electrical.Analog.Spice.Mp Mp1(
          L=1.2e-6,
                W=5e-6,
        Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[-94,46; -74,66]);

              BondLib.Electrical.Analog.Spice.Mp Mp2(
                L=1.2e-6,
                W=5e-6,
             Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[-94,16; -74,36]);
              BondLib.Electrical.Analog.Spice.Mp Mp3(
                L=1.2e-6,
                W=5e-6,
                Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[-94,-14; -74,6]);
              annotation (Diagram, Icon(
                Text(
                  extent=[-108,108; -60,78],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="100"),
                Text(
                  extent=[-108,84; -60,54],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="10"),
                Text(
                  extent=[-108,52; -60,22],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="11"),
                Text(
                  extent=[-108,20; -60,-10],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="21"),
                Text(
                  extent=[-108,-8; -60,-38],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="31"),
                Text(
                  extent=[-108,-40; -60,-70],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillColor=30,
                    rgbfillColor={244,244,244},
                    fillPattern=1),
                  string="41"),
                Rectangle(extent=[-106,110; 74,-72], style(color=3, rgbcolor={0,0,255}))));
        protected
              Modelica.Electrical.Analog.Interfaces.Pin D1
                annotation (extent=[-63,21; -61,23]);
        public
              BondLib.Electrical.Analog.Spice.Mp Mp4(
                L=1.2e-6,
                W=5e-6,
              Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[-94,-46; -74,-26]);
        protected
              Modelica.Electrical.Analog.Interfaces.Pin D2
                annotation (extent=[-99,37; -97,39]);
        protected
              Modelica.Electrical.Analog.Interfaces.Pin G1
                annotation (extent=[-95,-53; -93,-51]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[-58,76; -38,96]);

              BondLib.Electrical.Analog.Basic.Ground Ground1
                annotation (extent=[-34,82; -22,94]);
              BondLib.Electrical.Analog.Spice.Mn Mn2(
              L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[-58,50; -38,70]);
              BondLib.Electrical.Analog.Basic.Ground Ground2
                annotation (extent=[-34,56; -22,68]);
              BondLib.Electrical.Analog.Spice.Mn Mn3(
                L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[-58,24; -38,44]);
              BondLib.Electrical.Analog.Basic.Ground Ground3
                annotation (extent=[-34,30; -22,42]);
              BondLib.Electrical.Analog.Spice.Mn Mn4(
              L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[-58,-2; -38,18]);
              BondLib.Electrical.Analog.Basic.Ground Ground4
                annotation (extent=[-34,4; -22,16]);
              BondLib.Electrical.Analog.Spice.Mp Mp5(
                L=1.2e-6,
                W=20e-6,
              Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[4,28; 24,48]);
              BondLib.Electrical.Analog.Spice.Mp Mp6(
                L=1.2e-6,
                W=20e-6,
               Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[4,50; 24,70]);
              BondLib.Electrical.Analog.Spice.Mp Mp7(
                L=1.2e-6,
                W=20e-6,
               Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[4,74; 24,94]);
              BondLib.Electrical.Analog.Basic.Ground Ground5
                annotation (extent=[-6,22; 6,34]);
              BondLib.Electrical.Analog.Basic.Ground Ground6
                annotation (extent=[-6,68; 6,80]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn5(
                L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[54,72; 74,92]);
              BondLib.Electrical.Analog.Basic.Ground Ground7
                annotation (extent=[44,72; 56,84]);
              BondLib.Electrical.Analog.Basic.Ground Ground8
                annotation (extent=[84,74; 96,86]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn6(
               L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[54,44; 74,64]);
              BondLib.Electrical.Analog.Basic.Ground Ground9
                annotation (extent=[84,46; 96,58]);
              BondLib.Electrical.Analog.Basic.Ground Ground10
                annotation (extent=[84,18; 96,30]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn7(
               L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[54,16; 74,36]);
              BondLib.Electrical.Analog.Basic.Ground Ground11
                annotation (extent=[44,16; 56,28]);
              BondLib.Electrical.Analog.Spice.Mp Mp8(
                L=1.2e-6,
                W=10e-6,
             Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[46,-20; 66,0]);
              BondLib.Electrical.Analog.Spice.Mp Mp9(
                L=1.2e-6,
                W=10e-6,
          Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[46,-44; 66,-24]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn8(
           L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[46,-70; 66,-50]);
              BondLib.Electrical.Analog.Basic.Ground Ground12
                annotation (extent=[84,-66; 96,-54]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn9(
           L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[46,-98; 66,-78]);
              BondLib.Electrical.Analog.Basic.Ground Ground13
                annotation (extent=[84,-96; 96,-84]);
              BondLib.Electrical.Analog.Spice.Mp Mp10(
                L=1.2e-6,
                W=10e-6,
             Level=1, TPG=-1,
        KP=7.69968E-06,
        LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
        TOX=1.9800000E-8,              LD=0.28e-6,           NSUB=4.9999999E+17,
        NSS=0.0000000E+00,
        CJ=6.852E-2,        MJ=0.429,           PB=1.0,
        CJSW=5.217E-10,     MJSW=0.351,
        CGS0=7.29E-10,      CGD0=7.29E-10)
                annotation (extent=[-28,-66; -8,-46]);
        public
              BondLib.Electrical.Analog.Spice.Mn Mn10(
              L=1e-6, W=5e-6,
        Level=1, TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
        TOX=1.9800000E-8,            LD=0.1e-6,           NSUB=4.9999999E+16,
        NSS=0.0000000E+00,
        CJ=4.091E-4,        MJ=0.307,           PB=1.0,
        CJSW=3.078E-10,
        CGS0=3.93E-10,      CGD0=3.93E-10,
            MJSW=0.3)
                annotation (extent=[-28,-36; -8,-16]);
              BondLib.Electrical.Analog.Basic.Ground Ground14
                annotation (extent=[-8,-44; 4,-32]);
              BondLib.Electrical.Analog.Basic.Ground Ground15
                annotation (extent=[-104,-98; -92,-86]);
              BondLib.Electrical.Analog.Basic.Ground Ground16
                annotation (extent=[28,44; 40,56]);
              BondLib.Electrical.Analog.Basic.Ground Ground17
                annotation (extent=[86,-42; 98,-30]);
              BondLib.Electrical.Analog.Basic.Ground Ground18
                annotation (extent=[10,-56; 22,-44]);
        public
            Modelica.Electrical.Analog.Interfaces.Pin c11
              annotation (extent=[-136,28; -116,48]);
            Modelica.Electrical.Analog.Interfaces.Pin c10
              annotation (extent=[-136,60; -116,80]);
            Modelica.Electrical.Analog.Interfaces.Pin c21
              annotation (extent=[-136,-4; -116,16]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c31
              annotation (extent=[-136,-32; -116,-12]);
            Modelica.Electrical.Analog.Interfaces.PositivePin c41
              annotation (extent=[-136,-66; -116,-46]);
            Modelica.Electrical.Analog.Interfaces.Pin c100
              annotation (extent=[-136,86; -116,106]);
        BondLib.Electrical.Analog.Spice.C C1(C=1e-12)
          annotation (extent=[-106,-80; -90,-66],
                                              rotation=-90);
        BondLib.Electrical.Analog.Spice.C C2(C=1e-12)
          annotation (extent=[26,62; 42,76],  rotation=-90);
        BondLib.Electrical.Analog.Spice.C C3(C=1e-12)
          annotation (extent=[84,-24; 100,-10],
                                              rotation=-90);
        BondLib.Electrical.Analog.Spice.C C4(C=1e-12)
          annotation (extent=[8,-40; 24,-26], rotation=-90);
        equation
              connect(D1, Mp2.B) annotation (points=[-62,22; -70,22; -70,26; -74,26],
                  style(color=3, rgbcolor={0,0,255}));
              connect(D1, Mp1.S) annotation (points=[-62,22; -70,22; -70,51; -74,51],
                  style(color=3, rgbcolor={0,0,255}));
              connect(D1, Mp1.B) annotation (points=[-62,22; -70,22; -70,56; -74,56],
                  style(color=3, rgbcolor={0,0,255}));
              connect(D1, Mp3.B) annotation (points=[-62,22; -70,22; -70,-4; -74,-4],
                  style(color=3, rgbcolor={0,0,255}));
              connect(D1, Mp3.S) annotation (points=[-62,22; -70,22; -70,-9; -74,-9],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mp1.G, D1) annotation (points=[-94,51; -94,42; -70,42; -70,22;
                -62,22],   style(color=3, rgbcolor={0,0,255}));
              connect(Mp2.S, D1) annotation (points=[-74,21; -70,21; -70,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mp2.G, D1) annotation (points=[-94,21; -94,12; -70,12; -70,22;
                -62,22], style(color=3, rgbcolor={0,0,255}));
              connect(Mp3.G, D1) annotation (points=[-94,-9; -94,-18; -70,-18; -70,22;
                -62,22],       style(color=3, rgbcolor={0,0,255}));
              connect(Mp2.D, D2) annotation (points=[-74,31; -74,38; -98,38], style(
                    color=3, rgbcolor={0,0,255}));
              connect(D2, Mp1.D) annotation (points=[-98,38; -98,68; -74,68; -74,61],
                             style(color=3, rgbcolor={0,0,255}));
              connect(D2, Mp3.D) annotation (points=[-98,38; -98,8; -74,8; -74,1],
                              style(color=3, rgbcolor={0,0,255}));
              connect(Mp4.D, D2) annotation (points=[-74,-31; -74,-24; -98,-24; -98,38],
                                 style(color=3, rgbcolor={0,0,255}));
              connect(Mp4.B, D1) annotation (points=[-74,-36; -70,-36; -70,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mp4.S, D1) annotation (points=[-74,-41; -70,-41; -70,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mp4.G, G1) annotation (points=[-94,-41; -94,-52],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mn1.G, D1) annotation (points=[-58,81; -58,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mn1.D, D2) annotation (points=[-38,91; -38,98; -98,98; -98,38],
                             style(color=3, rgbcolor={0,0,255}));
              connect(Mn1.B, Ground1.p) annotation (points=[-38,86; -34,86; -34,96; -28,
                96; -28,94],    style(color=3, rgbcolor={0,0,255}));
              connect(Mn2.G, D1) annotation (points=[-58,55; -58,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Mn1.S, Mn2.D) annotation (points=[-38,81; -38,65],
                                                                       style(color=
                      3, rgbcolor={0,0,255}));
              connect(Ground2.p, Mn2.B) annotation (points=[-28,68; -28,70; -34,70; -34,
                60; -38,60],    style(color=3, rgbcolor={0,0,255}));
              connect(Ground3.p, Mn3.B) annotation (points=[-28,42; -28,44; -34,44; -34,
                34; -38,34],    style(color=3, rgbcolor={0,0,255}));
              connect(Mn3.D, Mn2.S) annotation (points=[-38,39; -38,55],
                                                                       style(color=
                      3, rgbcolor={0,0,255}));
              connect(Mn3.G, D1) annotation (points=[-58,29; -58,22; -62,22],
                  style(color=3, rgbcolor={0,0,255}));
              connect(Ground4.p, Mn4.B) annotation (points=[-28,16; -28,18; -34,18; -34,
                8; -38,8],  style(color=3, rgbcolor={0,0,255}));
              connect(Mn3.S, Mn4.D) annotation (points=[-38,29; -38,13],
                                                                      style(color=3,
                    rgbcolor={0,0,255}));
              connect(Mn4.G, G1) annotation (points=[-58,3; -66,3; -66,-52; -94,-52],
                              style(color=3, rgbcolor={0,0,255}));
              connect(Mn4.S, Ground4.p) annotation (points=[-38,3; -34,3; -34,18; -28,
                18; -28,16],  style(color=3, rgbcolor={0,0,255}));
          connect(Mp6.S, Mp5.D) annotation (points=[24,55; 24,43], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.S, Mp6.D) annotation (points=[24,79; 24,65], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(D1, Mp5.S) annotation (points=[-62,22; 24,22; 24,33], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp5.G, Ground5.p) annotation (points=[4,33; 2,33; 2,34; 0,34], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp6.B, D1) annotation (points=[24,60; 28,60; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.B, D1) annotation (points=[24,84; 28,84; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(D2, Mp6.G) annotation (points=[-98,38; -98,98; -8,98; -8,55; 4,55],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Ground6.p, Mp7.G) annotation (points=[0,80; 2,80; 2,79; 4,79], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.D, Mn5.D) annotation (points=[24,89; 42,89; 42,96; 74,96; 74,87],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn5.G, Ground7.p) annotation (points=[54,77; 54,86; 50,86; 50,84],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn5.B, Ground8.p) annotation (points=[74,82; 82,82; 82,86; 90,86],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn5.S, Ground8.p) annotation (points=[74,77; 82,77; 82,86; 90,86],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp5.B, D1) annotation (points=[24,38; 28,38; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.D, Mn6.D) annotation (points=[24,89; 42,89; 42,68; 74,68; 74,59],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(D2, Mn6.G) annotation (points=[-98,38; -98,98; 40,98; 40,49; 54,49],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn6.B, Ground9.p) annotation (points=[74,54; 82,54; 82,58; 90,58],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn6.S, Ground9.p) annotation (points=[74,49; 82,49; 82,58; 90,58],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.D, Mn7.D) annotation (points=[24,89; 42,89; 42,40; 74,40; 74,31],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn7.G, Ground11.p) annotation (points=[54,21; 54,30; 50,30; 50,28],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Ground10.p, Mn7.S) annotation (points=[90,30; 82,30; 82,21; 74,21],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn7.B, Ground10.p) annotation (points=[74,26; 82,26; 82,30; 90,30],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp7.D, Mp8.G) annotation (points=[24,89; 42,89; 42,-15; 46,-15],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp8.B, D1) annotation (points=[66,-10; 78,-10; 78,4; 28,4; 28,22; -62,
                22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp8.S, D1) annotation (points=[66,-15; 78,-15; 78,4; 28,4; 28,22; -62,
                22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp8.D, Mp9.D) annotation (points=[66,-5; 70,-5; 70,-29; 66,-29],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp9.B, D1) annotation (points=[66,-34; 78,-34; 78,4; 28,4; 28,22; -62,
                22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp9.S, D1) annotation (points=[66,-39; 78,-39; 78,4; 28,4; 28,22; -62,
                22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp9.G, D1) annotation (points=[46,-39; 28,-39; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp9.D, Mn8.D) annotation (points=[66,-29; 70,-29; 70,-55; 66,-55],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn8.G, Mp7.D) annotation (points=[46,-65; 42,-65; 42,89; 24,89],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn8.B, Ground12.p) annotation (points=[66,-60; 80,-60; 80,-48; 90,-48;
                90,-54], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn8.S, Mn9.D) annotation (points=[66,-65; 66,-83], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn9.G, D1) annotation (points=[46,-93; 28,-93; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn9.B, Ground13.p) annotation (points=[66,-88; 80,-88; 80,-78; 90,-78;
                90,-84], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn9.S, Ground13.p) annotation (points=[66,-93; 80,-93; 80,-78; 90,-78;
                90,-84], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn8.D, Mp10.G) annotation (points=[66,-55; 70,-55; 70,-76; -28,-76;
                  -28,-61],
                          style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp10.B, D1) annotation (points=[-8,-56; 28,-56; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp10.S, D1) annotation (points=[-8,-61; 28,-61; 28,22; -62,22], style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp10.D, Mn10.D) annotation (points=[-8,-51; 4,-51; 4,-21; -8,-21],
              style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mp10.G, Mn10.G) annotation (points=[-28,-61; -28,-31],          style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn10.S, Ground14.p) annotation (points=[-8,-31; -2,-31; -2,-32],
                      style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
          connect(Mn10.B, Ground14.p) annotation (points=[-8,-26; -2,-26; -2,-32],
                      style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=30,
              rgbfillColor={244,244,244},
              fillPattern=1));
            connect(D2, c11) annotation (points=[-98,38; -126,38], style(
                color=3,
                rgbcolor={0,0,255},
                fillColor=30,
                rgbfillColor={244,244,244},
                fillPattern=1));
            connect(G1, c10) annotation (points=[-94,-52; -104,-52; -104,70; -126,70],
                style(
                color=3,
                rgbcolor={0,0,255},
                fillColor=30,
                rgbfillColor={244,244,244},
                fillPattern=1));
            connect(Mp7.D, c21) annotation (points=[24,89; 24,118; -120,118; -120,18;
                  -126,18; -126,6], style(
                color=3,
                rgbcolor={0,0,255},
                fillColor=30,
                rgbfillColor={244,244,244},
                fillPattern=1));
            connect(D1, c100) annotation (points=[-62,22; -62,96; -126,96], style(
                color=3,
                rgbcolor={0,0,255},
                fillColor=30,
                rgbfillColor={244,244,244},
                fillPattern=1));
          connect(C1.n, Ground15.p) annotation (points=[-98,-80; -98,-86],
              style(color=3, rgbcolor={0,0,255}));
          connect(C1.p, D2) annotation (points=[-98,-66; -98,38], style(color=3,
                rgbcolor={0,0,255}));
          connect(C2.n, Ground16.p) annotation (points=[34,62; 34,56], style(
                color=3, rgbcolor={0,0,255}));
          connect(C2.p, Mp7.D) annotation (points=[34,76; 34,89; 24,89], style(
                color=3, rgbcolor={0,0,255}));
          connect(C3.n, Ground17.p) annotation (points=[92,-24; 92,-30], style(
                color=3, rgbcolor={0,0,255}));
          connect(C3.p, Mp8.D) annotation (points=[92,-10; 92,-5; 66,-5], style(
                color=3, rgbcolor={0,0,255}));
          connect(C3.p, c31) annotation (points=[92,-10; 92,-6; 106,-6; 106,
                -106; -116,-106; -116,-22; -126,-22], style(color=3, rgbcolor={
                  0,0,255}));
          connect(C4.n, Ground18.p) annotation (points=[16,-40; 16,-44], style(
                color=3, rgbcolor={0,0,255}));
          connect(C4.p, Mn10.D) annotation (points=[16,-26; 16,-21; -8,-21],
              style(color=3, rgbcolor={0,0,255}));
          connect(C4.p, c41) annotation (points=[16,-26; 16,-10; -40,-10; -40,
                -56; -126,-56], style(color=3, rgbcolor={0,0,255}));
        end NDINV;
          annotation (Diagram(
                Text(
                  extent=[8,86; 22,80],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="11"),
                Text(
                  extent=[8,80; 22,74],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="12"),
                Text(
                  extent=[8,74; 22,68],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="13"),
                Text(
                  extent=[8,38; 22,32],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="21"),
                Text(
                  extent=[8,32; 22,26],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="22"),
                Text(
                  extent=[8,26; 22,20],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="23"),
                Text(
                  extent=[8,-8; 22,-14],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="31"),
                Text(
                  extent=[8,-14; 22,-20],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="32"),
                Text(
                  extent=[8,-20; 22,-26],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="33"),
                Text(
                  extent=[8,-54; 22,-60],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="41"),
                Text(
                  extent=[8,-60; 22,-66],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="42"),
                Text(
                  extent=[8,-66; 22,-72],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="43"),
                Text(
                  extent=[8,-86; 22,-92],
                  style(
                    color=3,
                    rgbcolor={0,0,255},
                    fillPattern=1),
                  string="5")), experiment(StopTime=1.5e-007),
          Documentation(info="<html>
<font color=blue><b>I don't have enough memory in my computer to simulate this circuit.  It is too big.</b></font> <p>

<font color=blue><b>Each of the four subcircuit contains 20 MOSFETs plus 4 capacitors.</b></font> <p>

<font color=blue><b>Consequently, the the entire circuit contains 80 MOSFETs plus 16 capacitors.</b></font> <p>

<font color=blue><b>Since each</b></font> <b>level=1</b> <font color=blue><b>MOSFET contains two state variables and each capacitor contains one state variable, the entire circuit represents a dynamic system of order 176.</b></font> <p>

<font color=blue><b>I was able to compile the circuit in roughly 15 minutes of real time:</b></font> <p>
<img src=\"../Images/mos1test7b.png\"> <p>

<font color=blue><b>However, I had to interrupt the simulation after about one hour.  It had made very little progress:</b></font> <p>
<img src=\"../Images/mos1test7c.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos1test7a.png\"> <p>

</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-70,10; 70,-10], style(
                  color=1,
                  rgbcolor={255,0,0},
                  fillColor=1,
                  rgbfillColor={255,0,0},
                  fillPattern=1)),
              Text(
                extent=[-80,80; 80,-80],
                string="!",
                style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1))));
            BondLib.Electrical.Analog.Basic.Ground Ground1
              annotation (extent=[-90,-100; -70,-80]);
            BondLib.Electrical.Analog.Basic.Ground Ground2
              annotation (extent=[-60,50; -40,70]);
            NDINV NDINV1 annotation (extent=[46,56; 82,92]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c11
              annotation (extent=[19,81; 21,83]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c12
              annotation (extent=[19,75; 21,77]);
      protected
            Modelica.Electrical.Analog.Interfaces.PositivePin c13
              annotation (extent=[19,69; 21,71]);
      public
            NDINV NDINV2 annotation (extent=[46,10; 82,46]);
      protected
            Modelica.Electrical.Analog.Interfaces.PositivePin c23
              annotation (extent=[19,23; 21,25]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c22
              annotation (extent=[19,29; 21,31]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c21
              annotation (extent=[19,33; 21,35]);
      public
            NDINV NDINV3 annotation (extent=[46,-36; 82,0]);
      protected
            Modelica.Electrical.Analog.Interfaces.PositivePin c33
              annotation (extent=[19,-23; 21,-21]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c32
              annotation (extent=[19,-17; 21,-15]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c31
              annotation (extent=[19,-13; 21,-11]);
      public
            NDINV NDINV4 annotation (extent=[46,-82; 82,-46]);
      protected
            Modelica.Electrical.Analog.Interfaces.PositivePin c43
              annotation (extent=[19,-69; 21,-67]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c42
              annotation (extent=[19,-63; 21,-61]);
      protected
            Modelica.Electrical.Analog.Interfaces.Pin c41
              annotation (extent=[19,-59; 21,-57]);
      protected
            Modelica.Electrical.Analog.Interfaces.PositivePin c5
              annotation (extent=[19,-91; 21,-89]);
      public
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=5e-9)
                       annotation (extent=[-90,-72; -70,-52],rotation=270);
          BondLib.Electrical.Analog.Sources.RampVoltage VR2(V=5,
          duration=2e-9,
          startTime=20e-9)
                       annotation (extent=[-40,68; -20,88],  rotation=0);
        equation
            connect(NDINV1.c41, NDINV2.c10) annotation (points=[41.32,63.92; 34,64; 26,
                64; 26,40.6; 41.32,40.6],                     style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV2.c31, c23) annotation (points=[41.32,24.04; 27.66,24.04;
                27.66,24; 20,24],   style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV2.c21, c22) annotation (points=[41.32,29.08; 40,29.08; 40,30;
                20,30],       style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV2.c11, c21) annotation (points=[41.32,34.84; 42,34.84; 42,34;
                20,34],       style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV3.c31, c33) annotation (points=[41.32,-21.96; 27.66,-21.96;
                27.66,-22; 20,-22], style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV3.c21, c32) annotation (points=[41.32,-16.92; 40,-16.92; 40,
                -16; 20,-16], style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV3.c11, c31) annotation (points=[41.32,-11.16; 42,-11.16; 42,
                -12; 20,-12], style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV2.c41, NDINV3.c10) annotation (points=[41.32,17.92; 26,17.92;
                26,-5.4; 41.32,-5.4],          style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV4.c31, c43) annotation (points=[41.32,-67.96; 40,-67.96;
                  40,-68; 20,-68],    style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV4.c21, c42) annotation (points=[41.32,-62.92; 40,-62.92; 40,
                -62; 20,-62],      style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV4.c11, c41) annotation (points=[41.32,-57.16; 42,-57.16; 42,
                -58; 20,-58],      style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV4.c10, NDINV3.c41) annotation (points=[41.32,-51.4; 26,-51.4;
                26,-28.08; 41.32,-28.08], style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
            connect(NDINV4.c41, c5) annotation (points=[41.32,-74.08; 24.66,-74.08;
                  24.66,-90; 20,-90], style(
                color=3,
                rgbcolor={0,0,255},
                fillPattern=1));
          connect(c13, NDINV1.c31) annotation (points=[20,70; 32,70; 32,70.04; 41.32,
                70.04], style(color=3, rgbcolor={0,0,255}));
          connect(c12, NDINV1.c21) annotation (points=[20,76; 40.66,76; 40.66,75.08;
                41.32,75.08], style(color=3, rgbcolor={0,0,255}));
          connect(c11, NDINV1.c11) annotation (points=[20,82; 40.66,82; 40.66,80.84;
                41.32,80.84], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, Ground1.p) annotation (points=[-80,-72; -80,-80], style(
              color=3, rgbcolor={0,0,255}));
        connect(VR1.p, NDINV4.c100) annotation (points=[-80,-52; -80,-46.72;
              41.32,-46.72], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.p, NDINV3.c100) annotation (points=[-80,-52; -80,-0.72;
              41.32,-0.72], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.p, NDINV2.c100) annotation (points=[-80,-52; -80,45.28;
              41.32,45.28], style(color=3, rgbcolor={0,0,255}));
        connect(VR1.p, NDINV1.c100) annotation (points=[-80,-52; -80,91.28;
              41.32,91.28], style(color=3, rgbcolor={0,0,255}));
        connect(Ground2.p, VR2.p) annotation (points=[-50,70; -50,78; -40,78],
            style(color=3, rgbcolor={0,0,255}));
        connect(VR2.n, NDINV1.c10) annotation (points=[-20,78; -10,78; -10,86.6;
              41.32,86.6], style(color=3, rgbcolor={0,0,255}));
        end mos1test7;

        model mos1test8

          annotation (Diagram, experiment(StopTime=3e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VT1 3 2 PULSE 0V 5V 2ns 10ns 10ns 26ns 72ns
VT2 4 0 PULSE 0V 5V 12ns 10ns 10ns 26ns 72ns
VT3 5 0 PULSE 0V -5V 22ns 10ns 10ns 26ns 72ns

R1 2 1 1
C1 0 1 0.5p

M1 3 4 1 5 Mbreakn L=40u W=60u

.MODEL Mbreakn NMOS
+ level=1 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1u KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091 MJ=0.307 CJSW=3.078E-6 MJSW=0.3 CGDO=3.93E-6 CGSO=3.93E-6

.TRAN 0.1n 300n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test8a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test8b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos1test8c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos1test8d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look almost identical to those obtained by</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>.</b></font> <p>

<font color=blue><b>I suspect that there is an additional effect modeled in</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>that is not present in either the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>or the</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>models.</b></font>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
          V=5,
          rising=10e-9,
          width=26e-9,
          falling=10e-9,
          period=72e-9,
          offset=0,
          startTime=2e-9)
            annotation (extent=[60,-10; 80,10],  rotation=270);
          BondLib.Electrical.Analog.Spice.Mn Mn1(
        W=60e-6, L=40e-6,
        Level=1, RD=1, RS=1,
        TPG=1,
        KP=2.33082E-05,
        LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
                                        LD=0.1e-6,           NSUB=4.9999999E+16,
        CJ=4.091E0,        MJ=0.307,
        CJSW=3.078E-6,
        CGS0=3.93E-6,      CGD0=3.93E-6,
          TOX=1.98E-12,
          EG=1.11,
          PB=1,
          MJSW=0.3)
                   annotation (extent=[-50,8; -30,32]);

          BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
          V=5,
          rising=10e-9,
          width=26e-9,
          falling=10e-9,
          period=72e-9,
          offset=0,
          startTime=12e-9)
            annotation (extent=[-70,-20; -50,0], rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[-70,-50; -50,-30]);
          BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT3(
          rising=10e-9,
          width=26e-9,
          falling=10e-9,
          period=72e-9,
          offset=0,
          V=-5,
          startTime=22e-9)
            annotation (extent=[30,-10; 50,10],  rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[30,-40; 50,-20]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[-30,-50; -10,-30]);
          BondLib.Electrical.Analog.Spice.R R1(R=1)
            annotation (extent=[0,-20; 20,0],    rotation=-90);
        BondLib.Electrical.Analog.Spice.C C1(C=5e-13)
          annotation (extent=[-30,-20; -10,0],rotation=-90);
        equation
        connect(Mn1.D, VT1.p)                 annotation (points=[-30,26; 70,26;
              70,10],
              style(color=3, rgbcolor={0,0,255}));
        connect(VT2.n, Ground2.p)
            annotation (points=[-60,-20; -60,-30], style(color=3, rgbcolor={0,0,255}));
        connect(VT2.p, Mn1.G)                 annotation (points=[-60,0; -60,14;
              -50,14],
                     style(color=3, rgbcolor={0,0,255}));
        connect(VT3.n, Ground1.p)
            annotation (points=[40,-10; 40,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, VT3.p)                 annotation (points=[-30,20; 40,20;
              40,10],
              style(color=3, rgbcolor={0,0,255}));
        connect(R1.p, Mn1.S) annotation (points=[10,0; 10,14; -30,14], style(
              color=3, rgbcolor={0,0,255}));
        connect(R1.n, VT1.n) annotation (points=[10,-20; 10,-50; 70,-50; 70,-10],
            style(color=3, rgbcolor={0,0,255}));
        connect(C1.n, Ground3.p) annotation (points=[-20,-20; -20,-30], style(
              color=3, rgbcolor={0,0,255}));
        connect(C1.p, Mn1.S) annotation (points=[-20,0; -20,14; -30,14], style(
              color=3, rgbcolor={0,0,255}));
        end mos1test8;

        model mos1test9

          BondLib.Electrical.Analog.Spice.Mn Mn1(
        W=60e-6, L=40e-6,
        TPG=1,
        KP=2.33082E-05,
        VT0=0.69486, GAMMA=0.60309, PHI=1,
                                        LD=0.1e-6,           NSUB=4.9999999E+16,
        CJ=4.091E0,        MJ=0.307,
        CJSW=3.078E-6,
        CGS0=3.93E-6,      CGD0=3.93E-6,
          Level=1,
          TOX=1.98E-12,
          PB=1,
          MJSW=0.3,
          RD=0.1,
          RS=0.1) annotation (extent=[-40,38; -20,62]);

          BondLib.Electrical.Analog.Sources.TableVoltage VT1(offset=-3, table=[
              0,0; 1e-9,10; 2e-9,0; 3e-9,10; 4e-9,0; 5e-9,10; 6e-9,0; 7e-9,10;
              8e-9,0; 9e-9,10; 10e-9,0])
            annotation (extent=[40,10; 60,30],rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground1
            annotation (extent=[40,-20; 60,0]);
          annotation (Diagram, experiment(StopTime=1e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 -2V
VT1 2 3 PWL 0ns 0V 1ns 0V 2ns 1V 3ns 1V 4ns 2V 5ns 2V 6ns 3V 7ns 3V 8ns 4V
VT2 3 0 PWL 0ns 0V 9ns 0V 10ns 1V
VT3 4 5 PWL 0ns 0V 1ns 10V 2ns 0V 3ns 10V 4ns 0V 5ns 10V 6ns 0V 7ns 10V 8ns 0V
VT4 5 0 PWL 0ns 0V 8ns 0V 9ns 10V 10ns 0V

M1 4 2 0 1 Mbreakn L=40u W=60u

.MODEL Mbreakn NMOS
+ level=1 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 VTO=0.69486 LD=0.1u
+ KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=0.1 RS=0.1 CJ=4.091
+ MJ=0.307 CJSW=3.078E-6 MJSW=0.3 CGDO=3.93E-6 CGSO=3.93E-6

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test9a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos1test9b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos1test9d.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos1test9c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look qualitatively similar to those obtained by</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>.</b></font> <p>

<font color=blue><b>There were lots of difficulties getting this circuit to simulate.  First, the</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>model contained two</b></font> <b>tabular voltage sources</b><font color=blue><b>, one of which had to be differentiated.  Since</b></font> <font color=red><b>Dymola</b></font> <font color=blue><b>uses discrete variables inside the definition of the</b></font> <b>tabular voltage sources</b><font color=blue><b>, this didn't work.  I had to replace the</b></font> <b>tabular voltage source</b> <font color=blue><b>in question by five</b></font> <b>ramp sources</b> <font color=blue><b>placed in series.  In</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>, I had to replace each of the two</b></font> <b>tabular voltage sources</b> <font color=blue><b>by two</b></font> <b>piecewise linear voltage sources</b> <font color=blue><b>placed in series, because the table contained more values than foreseen in the</b></font> <b>PWL source</b><font color=blue><b>.</b></font> <p>

<font color=blue><b>Next, the two resistances had been set explicitly to zero,</b></font> <b>RS = RD = 0</b><font color=blue><b>, which leads to a division by zero in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  I had to change these values to something a little less drastic,</b></font> <b>RS = RD = 0.1</b><font color=blue><b>.</b></font> <font color=brown><b>(This problem has been fixed in</b></font> <font color=red><b>BondLib 2.1a</b></font><font color=brown><b>.  However, I would need to replace also the second table source by a sequence of ramps in order to get this circuit to simulate with</b></font> <b>RS = RD = 0</b><font color=brown><b>).</b></font> <p>

<font color=blue><b>This example as well as the previous one,</b></font> <b>mos1test8</b><font color=blue><b>, contain unrealistic parameter values.  No real device will have a junction capacitance of</b></font> <b>CJ = 4.091 F</b><font color=blue><b>.  Hence it is fairly irrelevant, what the software is doing in such a case.</b></font> <p>

<font color=blue><b>On this circuit, default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) leads to a different initial state:</b></font> <p>
<img src=\"../Images/mos1test9e.png\">
</html>"),Icon(
              Ellipse(extent=[-80,80; 80,-80], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=58,
                  rgbfillColor={0,186,0},
                  fillPattern=1)),
              Ellipse(extent=[-60,60; 60,-60], style(
                  color=58,
                  rgbcolor={0,171,0},
                  fillColor=7,
                  rgbfillColor={255,255,255},
                  fillPattern=1)),
              Rectangle(extent=[-68,10; 70,-10], style(
                  color=58,
                  rgbcolor={0,184,0},
                  fillColor=58,
                  rgbfillColor={0,188,0},
                  fillPattern=1)),
              Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10;
                  -40,-16],
                  style(
                  color=0,
                  rgbcolor={0,0,0},
                  fillColor=0,
                  rgbfillColor={0,0,0},
                  fillPattern=1))));
          BondLib.Electrical.Analog.Basic.Ground Ground2
            annotation (extent=[40,-70; 60,-50]);
          BondLib.Electrical.Analog.Basic.Ground Ground3
            annotation (extent=[-20,-20; 0,0]);
          BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-2)
            annotation (extent=[10,10; 30,30],rotation=270);
          BondLib.Electrical.Analog.Basic.Ground Ground4
            annotation (extent=[10,-20; 30,0]);
          BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9,
          V=1,
          startTime=1e-9)
                       annotation (extent=[-60,10; -40,30],  rotation=270);
          BondLib.Electrical.Analog.Sources.RampVoltage VR2(     duration=1e-9,
          V=1,
          startTime=3e-9)
                       annotation (extent=[-60,-30; -40,-10],rotation=270);
          BondLib.Electrical.Analog.Sources.RampVoltage VR3(     duration=1e-9,
          V=1,
          startTime=5e-9)
                       annotation (extent=[-40,-50; -20,-30],rotation=0);
          BondLib.Electrical.Analog.Sources.RampVoltage VR4(     duration=1e-9,
          V=1,
          startTime=7e-9)
                       annotation (extent=[-10,-50; 10,-30], rotation=0);
          BondLib.Electrical.Analog.Sources.RampVoltage VR5(     duration=1e-9,
          V=1,
          startTime=9e-9)
                       annotation (extent=[20,-50; 40,-30],  rotation=0);
        equation
        connect(Ground1.p, VT1.n)
            annotation (points=[50,0; 50,10],    style(color=3, rgbcolor={0,0,255}));
        connect(VT1.p, Mn1.D)             annotation (points=[50,30; 50,56; -20,
              56],                                                                style(
                color=3, rgbcolor={0,0,255}));
          connect(Mn1.S, Ground3.p) annotation (points=[-20,44; -10,44; -10,0],
                                                                            style(color=
                 3, rgbcolor={0,0,255}));
        connect(Mn1.B, VC1.p)                annotation (points=[-20,50; 20,50;
              20,30],
              style(color=3, rgbcolor={0,0,255}));
        connect(Ground4.p, VC1.n)                annotation (points=[20,0; 20,5;
              20,10; 20,10],  style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VR1.p) annotation (points=[-40,44; -50,44; -50,30],
            style(color=3, rgbcolor={0,0,255}));
        connect(VR1.n, VR2.p) annotation (points=[-50,10; -50,-10], style(color=
               3, rgbcolor={0,0,255}));
        connect(VR2.n, VR3.p) annotation (points=[-50,-30; -50,-40; -40,-40],
            style(color=3, rgbcolor={0,0,255}));
        connect(VR3.n, VR4.p) annotation (points=[-20,-40; -10,-40], style(
              color=3, rgbcolor={0,0,255}));
        connect(VR4.n, VR5.p) annotation (points=[10,-40; 20,-40], style(color=
                3, rgbcolor={0,0,255}));
        connect(VR5.n, Ground2.p) annotation (points=[40,-40; 50,-40; 50,-50],
            style(color=3, rgbcolor={0,0,255}));
        end mos1test9;
      end level1;

  package level2
  model cap2test0

        annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns

C1 0 2 1.6p
C2 0 3 0.4p

M1 3 1 2 0 Mbreakn-Y2 L=5e-6 W=100e-6

.MODEL Mbreakn-Y2 NMOS
+ level=2 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test0a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/cap2test0b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/cap2test0c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>and</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>are qualitatively similar.  The difference must have been caused by another model parameter that uses different default values in the two environments and that hasn't been set explicity, but I don't know, which one that could be.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Sakallah, K.A., Y.-T. Yen, and S.S. Greenberg (1990), \"A First-Order Charge Conserving MOS Capacitance Model,\" <i>IEEE Trans. Computer-aided Design</i>, <b>9</b>(1), pp.99-108.
</html>"),Icon(
        Ellipse(extent=[-80,80; 80,-80], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=58,
            rgbfillColor={0,186,0},
            fillPattern=1)),
        Ellipse(extent=[-60,60; 60,-60], style(
            color=58,
            rgbcolor={0,171,0},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Rectangle(extent=[-68,10; 70,-10], style(
            color=58,
            rgbcolor={0,184,0},
            fillColor=58,
            rgbfillColor={0,188,0},
            fillPattern=1)),
        Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,-16],
            style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=0,
            rgbfillColor={0,0,0},
            fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        TPG=1,
    KP=2.33082e-5,
       LAMBDA=0.013333,
     VT0=0.69486,
       LD=0.1e-6,
        CJ=4.091e-4,
        GAMMA=0.60309,
        PHI=1,
     MJ=0.307,
        TOX=1.98e-8,
        NSUB=4.9999999e16,
        PB=1,
        CJSW=3.078e-10,
        MJSW=0.3,
        CGD0=3.93e-10,
        CGS0=3.93e-10,
        RD=1,
        RS=1,
        L=5e-6,
        W=100e-6,
    WD=0,
    EG=1.11,
    CGB0=0,
          Level=2)                           annotation (extent=[-30,8; -10,32]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
    V=10,
    rising=1e-9,
    width=9e-9,
    falling=1e-9,
    period=20e-9,
    offset=0,
    startTime=0)
        annotation (extent=[-50,-20; -30,0],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-50,-50; -30,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[10,-50; 30,-30]);
  BondLib.Electrical.Analog.Spice.C C1(C=1.6e-12, u0=6.92217927206452E-19)
    annotation (extent=[-10,-20; 10,0], rotation=-90);
  BondLib.Electrical.Analog.Spice.C C2(C=0.4e-12, u0=6.17934264765835E-19)
    annotation (extent=[30,-20; 50,0], rotation=-90);
  equation
  connect(VT1.n,Ground1. p)
        annotation (points=[-40,-20; -40,-30],
                                             style(color=3, rgbcolor={0,0,255}));
  connect(Mn1.G,VT1. p)                   annotation (points=[-30,14; -40,14;
              -40,0],style(color=3, rgbcolor={0,0,255}));
      connect(Ground4.p,Mn1. B) annotation (points=[20,-30; 20,20; -10,20],
                                                                          style(
            color=3, rgbcolor={0,0,255}));
  connect(C1.p,Mn1. S) annotation (points=[-6.12303e-016,0; 0,0; 0,14; -10,14],
                 style(color=3, rgbcolor={0,0,255}));
  connect(C1.n,Ground2. p) annotation (points=[6.12303e-016,-20; 6.12303e-016,
              -25; 0,-25; 0,-30],        style(color=3, rgbcolor={0,0,255}));
  connect(C2.n,Ground3. p) annotation (points=[40,-20; 40,-30], style(
        color=3, rgbcolor={0,0,255}));
  connect(C2.p,Mn1. D) annotation (points=[40,0; 40,26; -10,26], style(
        color=3, rgbcolor={0,0,255}));
  end cap2test0;

    model cap2test1

      annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns
C1 0 2 0.5p

M1 2 1 2 2 Mbreakn-Y2 L=5e-6 W=100e-6

.MODEL Mbreakn-Y2 NMOS
+ level=2 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test1a.png\"> <p>

<font color=blue><b>This circuit doesn't compile in</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/cap1test1b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/cap1test1c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/cap2test1d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <b>level=2</b> <font color=blue><b>circuit dies with a division by zero when the thermal port remains unconnected.  With the thermal port connected, the circuit simulates correctly.  I don't understand yet why this happens.</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    L=5e-6,
     W=100e-6,
     RD=1,
        RS=1,
    TPG=1,
    KP=2.33082e-5,
     LAMBDA=0.013333,
     VT0=0.69486,
      GAMMA=0.60309,
    TOX=1.98e-8,
       NSUB=4.9999999e16,
         LD=0.1e-6,
        PHI=1,
        PB=1,
        CJ=4.091e-4,
        MJ=0.307,
        CJSW=3.078e-10,
        CGD0=3.93e-10,
        CGS0=3.93e-10,
      WD=0,
      EG=1.11,
      CGB0=0,
      MJSW=0.3,
          Level=2)
     annotation (extent=[-10,18; 10,42]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=10,
      rising=1e-9,
      width=9e-9,
      falling=1e-9,
      period=20e-9,
      offset=0,
      startTime=0)
        annotation (extent=[-30,-10; -10,10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-30,-40; -10,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[10,-40; 30,-20]);
    BondLib.Electrical.Analog.Spice.C C1(C=0.5e-12)
      annotation (extent=[10,-10; 30,10], rotation=-90);
    BondLib.Thermal.HeatTransfer.Passive.ThermalConductor ThCond1(G=10)
      annotation (extent=[10,-70; 30,-50], rotation=0);
    BondLib.Thermal.HeatTransfer.Passive.HeatCapacitor ThC1(C=0.1)
      annotation (extent=[40,-70; 60,-90]);
    equation
    connect(VT1.n,Ground1. p)
        annotation (points=[-20,-10; -20,-15; -20,-15; -20,-20],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G,VT1. p)                 annotation (points=[-10,24; -20,24;
              -20,10],
                     style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,Ground2. p) annotation (points=[20,-10; 20,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,Mn1. S) annotation (points=[20,10; 20,24; 10,24], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,Mn1. B) annotation (points=[20,10; 20,30; 10,30], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn1.D,C1. p) annotation (points=[10,36; 20,36; 20,10], style(
          color=3, rgbcolor={0,0,255}));
        connect(Mn1.heatPort, C1.heatPort) annotation (points=[0,18; 0,
              -6.12303e-016; 10,-6.12303e-016], style(color=42, rgbcolor={191,0,
                0}));
        connect(C1.heatPort, ThCond1.port_a) annotation (points=[10,
              -6.12303e-016; 6,-6.12303e-016; 6,0; 0,0; 0,-60; 9,-60], style(
              color=42, rgbcolor={191,0,0}));
        connect(ThCond1.port_b, ThC1.port) annotation (points=[31,-60; 50,-60;
              50,-70], style(color=42, rgbcolor={191,0,0}));
    end cap2test1;

    model mos2test1

      annotation (Diagram,
          experiment(Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VT1 4 0 PWL 0ns 0V 20ns 5V 60ns -5V 100ns 5V 120ns 5V 160ns -6V 200ns 5V
VT2 2 0 PWL 0ns 0V 20ns -10V 100ns 10V 120ns -10V 200ns 10V

R1 5 4 800k
R2 2 1 3
R3 3 0 7

M1 5 1 3 3 Mbreakn2 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn2 NMOS level=2 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 200n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test1b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos2test1c.png\"> <p>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
          L=5e-6,
          W=2e-6,
          AD=100e-12,
          PD=40e-6,
          AS=100e-12,
          PS=40e-6,
          RD=1,
          RS=1,
          NSUB=4.9999999e16,
      EG=1.11,
          Level=2)                           annotation (extent=[-10,-2; 10,22]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 20e-9,
          5; 60e-9,-5; 100e-9,5; 120e-9,5; 160e-9,-6; 200e-9,5])
                                                 annotation (extent=[50,20; 70,
              40]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[70,10; 90,30]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT2(table=[0,0; 20e-9,
          -10; 100e-9,10; 120e-9,-10; 200e-9,10])
        annotation (extent=[-70,14; -50,-6],  rotation=180);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-90,-40; -70,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[40,-40; 60,-20]);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[20,20; 40,40],   rotation=0);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-40,-6; -20,14], rotation=0);
      BondLib.Electrical.Analog.Spice.R R3(R=7)
        annotation (extent=[20,-20; 40,0],   rotation=0);
    equation
    connect(VT1.n,Ground1. p)             annotation (points=[70,30; 80,30], style(
          color=3,
          rgbcolor={0,0,255},
          fillPattern=1));
    connect(VT2.n,Ground2. p)               annotation (points=[-70,4; -80,4;
              -80,-20], style(
            color=3,
            rgbcolor={0,0,255},
            fillPattern=1));
        connect(Mn1.B,Mn1. S) annotation (points=[10,10; 10,4],
                                                             style(
            color=3,
            rgbcolor={0,0,255},
            fillPattern=1));
    connect(R1.n,VT1. p) annotation (points=[40,30; 50,30], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p,Mn1. D) annotation (points=[20,30; 10,30; 10,16], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n,Mn1. G) annotation (points=[-20,4; -10,4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.p,VT2. p) annotation (points=[-40,4; -45,4; -45,4; -50,4],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S,R3. p) annotation (points=[10,4; 10,-10; 20,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[40,-10; 50,-10; 50,-20],
        style(color=3, rgbcolor={0,0,255}));
    end mos2test1;

    model mos2test2

      BondLib.Electrical.Analog.Spice.Mp Mp1(
        RD=1,
        RS=1,
        Level=2,
        L=4.9e-6,
        W=5.2e-6,
        AD=100e-12,
        AS=100e-12,
        NSUB=4.9999999e16,
          EG=1.11,
          PD=40e-12,
          PS=40e-12)                         annotation (extent=[10,28; 30,52]);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        RD=1,
        RS=1,
        Level=2,
        L=4.9e-6,
        W=5.2e-6,
        AD=100e-12,
        AS=100e-12,
        NSUB=4.9999999e16,
          EG=1.11,
          PD=40e-12,
          PS=40e-12)                         annotation (extent=[10,-12; 30,12]);
      annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 4 0 PWL 0ns 0V 1ns 5V
VR2 1 0 PWL 0ns 0V 100ns 5V
R1 4 3 3

M1 2 1 0 0 Mbreakn2 L=4.9u W=5.2u
M2 3 1 2 3 Mbreakp2 L=4.9u W=5.2u

.MODEL Mbreakn2 NMOS
+ level=2 NSUB=4.9999999e10 RD=1 RS=1

.MODEL Mbreakp2 PMOS
+ level=2 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test2a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test2b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos2test2c.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-10,-70; 10,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[30,-70; 50,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-40,-70; -20,-50]);
      BondLib.Electrical.Analog.Spice.R R1(R=3)
        annotation (extent=[-40,20; -20,40], rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                   annotation (extent=[-40,-40; -20,-20],rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR2(V=5, duration=
          100e-9)  annotation (extent=[-10,-40; 10,-20], rotation=270);
    equation
    connect(VR1.n,Ground3. p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50],
                    style(color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-30,-20; -30,0; -30,0; -30,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR2.n,Ground1. p) annotation (points=[-1.83691e-015,-40; 0,-40; 0,
              -50],
                  style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, R1.p) annotation (points=[30,46; 40,46; 40,60; -30,60;
              -30,40], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, VR2.p) annotation (points=[10,34; 1.83691e-015,34;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, Mp1.B) annotation (points=[30,46; 30,40], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.G, VR2.p) annotation (points=[10,-6; 1.83691e-015,-6;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, Mp1.S) annotation (points=[30,6; 40,6; 40,34; 30,34],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.S, Ground2.p) annotation (points=[30,-6; 40,-6; 40,-50],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, Mn1.S) annotation (points=[30,0; 30,-6], style(color=3,
              rgbcolor={0,0,255}));
    end mos2test2;

    model mos2test3

      annotation (Diagram, experiment(StopTime=4e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -1V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakn2 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn2 NMOS level=2 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test3a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test3b.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos2test3c.png\"> <p>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=5e-6,
        W=2e-6,
        AD=100e-12,
        PD=40e-6,
        AS=100e-12,
        PS=40e-6,
        RD=1,
        RS=1,
        NSUB=4.9999999e16,
      EG=1.11,
          Level=2)                           annotation (extent=[-10,28; 10,52]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-60,-60; -40,-40]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
          10e-9,-5; 30e-9,5])
        annotation (extent=[-30,-30; -10,-10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-30,-60; -10,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[40,-60; 60,-40]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-1)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[-60,0; -40,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-30,0; -10,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R3(R=4)
        annotation (extent=[10,0; 30,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R4(R=7)
        annotation (extent=[40,0; 60,20],    rotation=-90);
    equation
    connect(Ground2.p,VT1. n)             annotation (points=[-20,-40; -20,-35;
              -20,-30; -20,-30],
          style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground1. p) annotation (points=[-50,-30; -50,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n,VR1. p) annotation (points=[-50,0; -50,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(Mn1.D,R1. p) annotation (points=[10,46; 20,46; 20,60; -50,60; -50,
              20], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n,VT1. p) annotation (points=[-20,0; -20,-5; -20,-10; -20,-10],
                style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,Mn1. G) annotation (points=[-20,20; -20,34; -10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[20,0; 20,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.p,Mn1. S) annotation (points=[20,20; 20,34; 10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.p,Mn1. B) annotation (points=[50,20; 50,40; 10,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n,Ground4. p) annotation (points=[50,0; 50,-40], style(color=
           3, rgbcolor={0,0,255}));
    end mos2test3;

    model mos2test4

      annotation (Diagram, experiment(StopTime=10),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 5V
VR1 2 0 PWL 0ns -10V 15ns 15V

M1 1 2 0 0 Mbreakp2 L=1u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp2 PMOS level=2 RS=1 RD=1

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test4a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test4b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos1test4c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos2test4c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look again different.  This is probably irrelevant.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/mos2test4d.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=1e-6,
        W=2e-6,
        AD=100e-12,
        AS=100e-12,
        RD=1,
        RS=1,
      EG=1.11,
      PD=40e-6,
      PS=40e-6,
          Level=2)                           annotation (extent=[10,8; 30,32]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
        annotation (extent=[-40,-20; -20,0],
                                         rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(
      V=25,
      offset=-10,
      duration=15e-9)
                   annotation (extent=[-10,-20; 10,0],   rotation=270);
    equation
    connect(Mn1.D,VC1. p)                annotation (points=[30,26; 40,26; 40,
              40; -30,40; -30,0],
                          style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n,Ground1. p)
        annotation (points=[-30,-20; -30,-25; -30,-25; -30,-30],
                                               style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground3. p)
        annotation (points=[30,14; 40,14; 40,-30],
                                            style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.B,Mn1. S)
        annotation (points=[30,20; 30,14],style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground2. p) annotation (points=[-1.83691e-015,-20;
              -1.83691e-015,-25; 0,-25; 0,-30],
                              style(color=3, rgbcolor={0,0,255}));
    connect(VR1.p,Mn1. G) annotation (points=[1.83691e-015,0; 1.83691e-015,14;
              10,14], style(color=3, rgbcolor={0,0,255}));
    end mos2test4;

    model mos2test5

      annotation (experiment(StopTime=4e-008), Diagram,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -10V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakp2 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp2 PMOS level=2 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test5a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test5b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos2test5d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos2test5c.png\"> <p>

<font color=blue><b>The fact that the two versions of</b></font> <font color=red><b>Spice</b></font> <font color=blue><b>disagree on the result makes it difficult to trust in the</b></font> <b>level=2</b> <font color=blue><b>MOSFET models of</b></font> <font color=red><b>Berkeley Spice3g.</b></font>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mp Mp1(
        L=5e-6,
        W=2e-6,
        AD=100e-12,
        PD=40e-6,
        AS=100e-12,
        PS=40e-6,
        RD=1,
        RS=1,
        NSUB=4.9999999e16,
      EG=1.11,
          Level=2)                           annotation (extent=[-10,28; 10,52]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-60,-60; -40,-40]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
          10e-9,-5; 30e-9,5])
        annotation (extent=[-30,-30; -10,-10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-30,-60; -10,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[40,-60; 60,-40]);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[-60,0; -40,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R4(R=7)
        annotation (extent=[40,0; 60,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R3(R=4)
        annotation (extent=[10,0; 30,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-30,0; -10,20],  rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-10)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
    equation
    connect(Ground2.p,VT1. n)
        annotation (points=[-20,-40; -20,-35; -20,-30; -20,-30],
                                               style(color=3, rgbcolor={0,0,255}));
    connect(R1.p,Mp1. D) annotation (points=[-50,20; -50,60; 20,60; 20,46; 10,
              46],style(color=3, rgbcolor={0,0,255}));
    connect(R2.n,VT1. p) annotation (points=[-20,0; -20,-5; -20,-10; -20,-10],
                style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,Mp1. G) annotation (points=[-20,20; -20,34; -10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p,Mp1. S) annotation (points=[20,20; 20,34; 10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[20,0; 20,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R4.p,Mp1. B) annotation (points=[50,20; 50,40; 10,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n,Ground4. p) annotation (points=[50,0; 50,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground1. p) annotation (points=[-50,-30; -50,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-50,-10; -50,0], style(color=3,
          rgbcolor={0,0,255}));
    end mos2test5;

    model mos2test6

      annotation (experiment(StopTime=3e-008), Diagram,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 2 0 PWL 0ns 0V 1ns 5V
VR2 3 0 PWL 0ns 0V 10ns 0V 11ns 5V 20ns 5V 21ns 0V
R1 2 1 3

M1 4 3 0 0 Mbreakn2 L=1.2u W=5.2u
M2 4 3 1 1 Mbreakp2 L=1.2u W=5.2u

.MODEL Mbreakn2 NMOS
+ level=2 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1u KP=2.33082E-05 GAMMA=0.60309 PB=1 RD=1 RS=1 CJ=4.091e-3
+ MJ=0.307 CJSW=3.078e-9 MJSW=0.3 CGDO=3.93e-9 CGSO=3.93e-9

.MODEL Mbreakp2 PMOS
+ level=2 TOX=1.98e-8 NSUB=4.9999999e11 VTO=-0.60865 LAMBDA=0.018966
+ LD=0.28u KP=7.69968E-06 GAMMA=0.89213 PHI=1 PB=1 RD=1 RS=1 CJ=6.852e-3
+ MJ=0.429 CJSW=5.217e-9 MJSW=0.351 CGDO=7.29e-9 CGSO=7.29e-9

.TRAN 0.1n 30n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test6a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test6b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos2test6c.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos2test6d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>Once again, the results obtained by</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>disagree with those obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  This deepens my distrust in the</b></font> <b>level=2</b> <font color=blue><b>MOSFET models of</b></font> <font color=red><b>Berkeley Spice3g.</b></font>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-10,-70; 10,-50]);
      BondLib.Electrical.Analog.Spice.Mp Mp1(
    W=5.2e-6, L=1.2e-6,
             RD=1, RS=1,
    KP=7.69968E-06,
    LAMBDA=0.018966, VT0=-0.60865, GAMMA=0.89213, PHI=1,
                                  LD=0.28e-6,           NSUB=4.9999999E+17,
    CJ=6.852E-3,        MJ=0.429,
    CJSW=5.217E-9,    MJSW=0.351,
    CGS0=7.29E-9,      CGD0=7.29E-9,
      TOX=1.98E-08,
      EG=1.11,
      PB=1,
          Level=2)           annotation (extent=[20,42; 40,18]);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=5.2e-6, L=1.2e-6,
             RD=1, RS=1,
    KP=2.33082E-05,  LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
                                   LD=0.1e-6,           NSUB=4.9999999E+16,
    CJ=4.091E-3,        MJ=0.307,
    CJSW=3.078E-9,
    CGS0=3.93E-9,      CGD0=3.93E-9,
      TOX=1.98E-08,
      EG=1.11,
      PB=1,
      MJSW=0.3,
          Level=2)           annotation (extent=[20,-12; 40,12]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[40,-70; 60,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-40,-70; -20,-50]);
      BondLib.Electrical.Analog.Spice.R R1(R=3)
        annotation (extent=[-40,10; -20,30], rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                   annotation (extent=[-40,-40; -20,-20],rotation=270);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=1e-9,
      width=9e-9,
      falling=1e-9,
      period=30e-9,
      nperiod=1,
      startTime=10e-9) annotation (extent=[-10,-40; 10,-20], rotation=-90);
    equation
      connect(Mn1.B,Mn1. S)
        annotation (points=[40,0; 40,-6],  style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground2. p)
        annotation (points=[40,-6; 50,-6; 50,-50],
                                             style(color=3, rgbcolor={0,0,255}));
      connect(Mp1.B,Mp1. S)
        annotation (points=[40,30; 40,36], style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.S,R1. p) annotation (points=[40,36; 50,36; 50,60; -30,60; -30,
              30],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.D,Mn1. D) annotation (points=[40,24; 50,24; 50,6; 40,6],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground3. p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50],                                              style(
          color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-30,-20; -30,-5; -30,-5; -30,10],
                                                               style(color=
            3, rgbcolor={0,0,255}));
    connect(VT1.n,Ground1. p) annotation (points=[6.12303e-016,-40;
              6.12303e-016,-46; 0,-46; 0,-50],
                                           style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p,Mn1. G) annotation (points=[-6.12303e-016,-20; -6.12303e-016,
              -6; 20,-6],           style(color=3, rgbcolor={0,0,255}));
    connect(Mp1.G,VT1. p) annotation (points=[20,36; -6.12303e-016,36;
              -6.12303e-016,-20],
                              style(color=3, rgbcolor={0,0,255}));
    end mos2test6;

    model mos2test8

      annotation (Diagram, experiment(StopTime=3e-007, Algorithm="Radau"),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VT1 3 2 PULSE 0V 5V 2ns 10ns 10ns 26ns 72ns
VT2 4 0 PULSE 0V 5V 12ns 10ns 10ns 26ns 72ns
VT3 5 0 PULSE 0V -5V 22ns 10ns 10ns 26ns 72ns

R1 2 1 1
C1 0 1 0.5p

M1 3 4 1 5 Mbreakn2 L=40u W=60u

.MODEL Mbreakn2 NMOS
+ level=2 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1u KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091 MJ=0.307 CJSW=3.078E-6 MJSW=0.3 CGDO=3.93E-6 CGSO=3.93E-6

.TRAN 0.1n 300n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test8a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test8b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice3g</b></font> simulation results: <p>
<img src=\"../Images/mos2test8c.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos2test8d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look different again (though much closer to those obtained by</b></font> <font color=red><b>Berkeley Spice3g</b></font><font color=blue><b>).  The results are probably irrelevant, because the MOSFET has been set up with paramter values that are far away from those that any realistic device would use (</b></font><b>CJ=4.091 F</b><font color=blue><b>).</b></font> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));

      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      startTime=2e-9)
        annotation (extent=[60,-10; 80,10],  rotation=270);
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=60e-6, L=40e-6,
             RD=1, RS=1,
    TPG=1,
    KP=2.33082E-05,
    LAMBDA=0.013333, VT0=0.69486, GAMMA=0.60309, PHI=1,
                                    LD=0.1e-6,           NSUB=4.9999999E+16,
    CJ=4.091E0,        MJ=0.307,
    CJSW=3.078E-6,
    CGS0=3.93E-6,      CGD0=3.93E-6,
      TOX=1.98E-12,
      EG=1.11,
      PB=1,
      MJSW=0.3,
          Level=2,
          AD=100e-12,
          AS=100e-12,
          PD=40e-12,
          PS=40e-12)
               annotation (extent=[-50,8; -30,32]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=5,
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      startTime=12e-9)
        annotation (extent=[-70,-20; -50,0], rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-70,-50; -50,-30]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT3(
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      V=-5,
      startTime=22e-9)
        annotation (extent=[30,-10; 50,10],  rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[30,-40; 50,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-30,-50; -10,-30]);
      BondLib.Electrical.Analog.Spice.R R1(R=1)
        annotation (extent=[0,-20; 20,0],    rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=5e-13)
      annotation (extent=[-30,-20; -10,0],rotation=-90);
    equation
    connect(Mn1.D,VT1. p)                 annotation (points=[-30,26; 70,26; 70,
              10],
          style(color=3, rgbcolor={0,0,255}));
    connect(VT2.n,Ground2. p)
        annotation (points=[-60,-20; -60,-30], style(color=3, rgbcolor={0,0,255}));
    connect(VT2.p,Mn1. G)                 annotation (points=[-60,0; -60,14;
              -50,14],
                 style(color=3, rgbcolor={0,0,255}));
    connect(VT3.n,Ground1. p)
        annotation (points=[40,-10; 40,-20], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.B,VT3. p)                 annotation (points=[-30,20; 40,20; 40,
              10],
          style(color=3, rgbcolor={0,0,255}));
    connect(R1.p,Mn1. S) annotation (points=[10,0; 10,14; -30,14], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n,VT1. n) annotation (points=[10,-20; 10,-50; 70,-50; 70,-10],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,Ground3. p) annotation (points=[-20,-20; -20,-30], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,Mn1. S) annotation (points=[-20,0; -20,14; -30,14], style(
          color=3, rgbcolor={0,0,255}));
    end mos2test8;

    model mos2test9

      annotation (Diagram, experiment(StopTime=1e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 -2V
VT1 2 3 PWL 0ns 0V 1ns 0V 2ns 1V 3ns 1V 4ns 2V 5ns 2V 6ns 3V 7ns 3V 8ns 4V
VT2 3 0 PWL 0ns 0V 9ns 0V 10ns 1V
VT3 4 5 PWL 0ns 0V 1ns 10V 2ns 0V 3ns 10V 4ns 0V 5ns 10V 6ns 0V 7ns 10V 8ns 0V
VT4 5 0 PWL 0ns 0V 8ns 0V 9ns 10V 10ns 0V

M1 4 2 0 1 Mbreakn2 L=40u W=60u AD=100p AS=100p PD=40p PS=40p

.MODEL Mbreakn2 NMOS
+ level=2 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 VTO=0.69486 LD=0.1u
+ KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=0.1 RS=0.1 CJ=4.091
+ MJ=0.307 CJSW=3.078E-6 MJSW=0.3 CGDO=3.93E-6 CGSO=3.93E-6

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test9a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos2test9b.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos2test9c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This example as well as the previous one,</b></font> <b>mos2test8</b><font color=blue><b>, contain unrealistic parameter values.  No real device will have a junction capacitance of</b></font> <b>CJ = 4.091 F</b><font color=blue><b>.  Hence it is fairly irrelevant, what the software is doing in such a case.</b></font> <p>

<font color=blue><b>On this circuit, default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) leads to a different initial state:</b></font> <p>
<img src=\"../Images/mos2test9d.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=60e-6, L=40e-6,
    TPG=1,
    KP=2.33082E-05,
    VT0=0.69486, GAMMA=0.60309, PHI=1,
                                    LD=0.1e-6,           NSUB=4.9999999E+16,
    CJ=4.091E0,        MJ=0.307,
    CJSW=3.078E-6,
    CGS0=3.93E-6,      CGD0=3.93E-6,
      TOX=1.98E-12,
      EG=1.11,
      PB=1,
      MJSW=0.3,
      RD=0.1,
      RS=0.1,
          AD=100e-12,
          AS=100e-12,
          PD=40e-12,
          PS=40e-12,
          Level=2)
              annotation (extent=[-40,38; -20,62]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(offset=-3, table=[
          0,0; 1e-9,10; 2e-9,0; 3e-9,10; 4e-9,0; 5e-9,10; 6e-9,0; 7e-9,10;
          8e-9,0; 9e-9,10; 10e-9,0])
        annotation (extent=[40,10; 60,30],rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[40,-20; 60,0]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[40,-70; 60,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-20,-20; 0,0]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-2)
        annotation (extent=[10,10; 30,30],rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[10,-20; 30,0]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9,
      V=1,
      startTime=1e-9)
                   annotation (extent=[-60,10; -40,30],  rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR2(     duration=1e-9,
      V=1,
      startTime=3e-9)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR3(     duration=1e-9,
      V=1,
      startTime=5e-9)
                   annotation (extent=[-40,-50; -20,-30],rotation=0);
      BondLib.Electrical.Analog.Sources.RampVoltage VR4(     duration=1e-9,
      V=1,
      startTime=7e-9)
                   annotation (extent=[-10,-50; 10,-30], rotation=0);
      BondLib.Electrical.Analog.Sources.RampVoltage VR5(     duration=1e-9,
      V=1,
      startTime=9e-9)
                   annotation (extent=[20,-50; 40,-30],  rotation=0);
    equation
    connect(Ground1.p,VT1. n)
        annotation (points=[50,0; 50,10],    style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p,Mn1. D)             annotation (points=[50,30; 50,56; -20,56],
                                                                              style(
            color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground3. p) annotation (points=[-20,44; -10,44; -10,0],
                                                                        style(color=
             3, rgbcolor={0,0,255}));
    connect(Mn1.B,VC1. p)                annotation (points=[-20,50; 20,50; 20,
              30],
          style(color=3, rgbcolor={0,0,255}));
    connect(Ground4.p,VC1. n)                annotation (points=[20,0; 20,5; 20,
              10; 20,10], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G,VR1. p) annotation (points=[-40,44; -50,44; -50,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,VR2. p) annotation (points=[-50,10; -50,-10], style(color=
           3, rgbcolor={0,0,255}));
    connect(VR2.n,VR3. p) annotation (points=[-50,-30; -50,-40; -40,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR3.n,VR4. p) annotation (points=[-20,-40; -10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(VR4.n,VR5. p) annotation (points=[10,-40; 20,-40], style(color=
            3, rgbcolor={0,0,255}));
    connect(VR5.n,Ground2. p) annotation (points=[40,-40; 50,-40; 50,-50],
        style(color=3, rgbcolor={0,0,255}));
    end mos2test9;
  end level2;

  package level3
    model cap3test0

        BondLib.Electrical.Analog.Spice.Mn Mn1( TPG=1,
      Level=3,
    RD=1,   RS=1,
            L=5e-6,
            W=100e-6,
    THETA=0.8109787,
    KAPPA=0.1579183,
    ETA=5.0622310e-2,
    U0=812.5126,
    VMAX=1186662,
     TOX=1.98e-8,
        XJ=0.2e-6, LD=0.1e-6,
      NSUB=4.9999999e16,
    CJ=4.091e-4,
     MJ=0.307,
     PB=1, CJSW=3.078e-10,
     MJSW=0.3,
    CGS0=3.93e-10,
      CGD0=3.93e-10,
          EG=1.11,
          VT0=0.69486,
          LAMBDA=0.013333,
          KP=2.33082e-5,
          GAMMA=0.60309,
          PHI=1)        annotation (extent=[-30,8; -10,32]);

        annotation (Diagram, experiment(StopTime=1e-007, Algorithm="Dassl"),
          experimentSetupOutput,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns

C1 0 2 1.6p
C2 0 3 0.4p

M1 3 1 2 0 Mbreakn-Y3 L=5e-6 W=100e-6

.MODEL Mbreakn-Y3 NMOS
+ level=3 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 UO=812.5126e4 VTO=0.69486
+ LAMBDA=0.013333 LD=0.1e-6 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGDO=3.93e-10 CGSO=3.93e-10
+ XJ=0.2e-6 VMAX=1186662 KAPPA=0.1579183 ETA=5.0622310e-2 THETA=0.8109787

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test0a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/cap3test0b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/cap3test0d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <b>level=3</b> <font color=blue><b>circuit fails to simulate in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation terminates with a division by zero:</b></font> <p>
<img src=\"../Images/cap3test0c.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Sakallah, K.A., Y.-T. Yen, and S.S. Greenberg (1990), \"A First-Order Charge Conserving MOS Capacitance Model,\" <i>IEEE Trans. Computer-aided Design</i>, <b>9</b>(1), pp.99-108.
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
        BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=10,
      rising=1e-9,
      width=9e-9,
      falling=1e-9,
      period=20e-9,
      offset=0,
      startTime=0)
          annotation (extent=[-50,-20; -30,0],
                                             rotation=270);
        BondLib.Electrical.Analog.Basic.Ground Ground1
          annotation (extent=[-50,-50; -30,-30]);
        BondLib.Electrical.Analog.Basic.Ground Ground2
          annotation (extent=[-10,-50; 10,-30]);
        BondLib.Electrical.Analog.Basic.Ground Ground3
          annotation (extent=[30,-50; 50,-30]);
        BondLib.Electrical.Analog.Basic.Ground Ground4
          annotation (extent=[10,-50; 30,-30]);
    BondLib.Electrical.Analog.Spice.C C1(C=1.6e-12, u0=6.92217927206452E-19)
      annotation (extent=[-10,-20; 10,0], rotation=-90);
    BondLib.Electrical.Analog.Spice.C C2(C=0.4e-12, u0=-6.17934264765835E-19)
      annotation (extent=[30,-20; 50,0], rotation=-90);
    equation
    connect(VT1.n,Ground1. p)
          annotation (points=[-40,-20; -40,-30],
                                               style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,Ground2. p) annotation (points=[6.12303e-016,-20; 6.12303e-016,
              -25; 0,-25; 0,-30],          style(color=3, rgbcolor={0,0,255}));
    connect(C2.n,Ground3. p) annotation (points=[40,-20; 40,-30], style(
          color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VT1.p) annotation (points=[-30,14; -40,14; -40,0], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.S, C1.p) annotation (points=[-10,14; -6.12303e-016,14;
              -6.12303e-016,0], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, Ground4.p) annotation (points=[-10,20; 20,20; 20,-30],
            style(color=3, rgbcolor={0,0,255}));
        connect(C2.p, Mn1.D) annotation (points=[40,0; 40,26; -10,26], style(
              color=3, rgbcolor={0,0,255}));
    end cap3test0;

    model cap3test1

      annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
Charge conservation test

VT1 1 0 PULSE 0V 10V 0s 1ns 1ns 9ns 20ns
C1 0 2 0.5p

M1 2 1 2 2 Mbreakn-Y3 L=5e-6 W=100e-6

.MODEL Mbreakn-Y3 NMOS
+ level=3 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1e-6 WD=0 KP=2.33082e-5 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-4 MJ=0.307 CJSW=3.078e-10 MJSW=0.3 CGBO=0
+ CGDO=3.93e-10 CGSO=3.93e-10

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/cap1test1a.png\"> <p>

<font color=blue><b>This circuit doesn't compile in</b></font> <font color=red><b>PSpice</b></font><font color=blue><b>:</b></font> <p>
<img src=\"../Images/cap1test1b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/cap3test1d.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/cap3test1c.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    L=5e-6,
     W=100e-6,
     RD=1,
        RS=1,
    TPG=1,
    KP=2.33082e-5,
     LAMBDA=0.013333,
     VT0=0.69486,
      GAMMA=0.60309,
    TOX=1.98e-8,
       NSUB=4.9999999e16,
         LD=0.1e-6,
        PHI=1,
        PB=1,
        CJ=4.091e-4,
        MJ=0.307,
        CJSW=3.078e-10,
        CGD0=3.93e-10,
        CGS0=3.93e-10,
      WD=0,
      EG=1.11,
      CGB0=0,
      MJSW=0.3,
          Level=3)
     annotation (extent=[-10,18; 10,42]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=10,
      rising=1e-9,
      width=9e-9,
      falling=1e-9,
      period=20e-9,
      offset=0,
      startTime=0)
        annotation (extent=[-30,-10; -10,10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-30,-40; -10,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[10,-40; 30,-20]);
    BondLib.Electrical.Analog.Spice.C C1(C=0.5e-12)
      annotation (extent=[10,-10; 30,10], rotation=-90);
    equation
    connect(VT1.n,Ground1. p)
        annotation (points=[-20,-10; -20,-15; -20,-15; -20,-20],
                                             style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G,VT1. p)                 annotation (points=[-10,24; -20,24;
              -20,10],
                     style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,Ground2. p) annotation (points=[20,-10; 20,-20], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,Mn1. S) annotation (points=[20,10; 20,24; 10,24], style(
          color=3, rgbcolor={0,0,255}));
    connect(C1.p,Mn1. B) annotation (points=[20,10; 20,30; 10,30], style(
          color=3, rgbcolor={0,0,255}));
    connect(Mn1.D,C1. p) annotation (points=[10,36; 20,36; 20,10], style(
          color=3, rgbcolor={0,0,255}));
    end cap3test1;

    model mos3test1

      annotation (Diagram, experiment(StopTime=2e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VT1 4 0 PWL 0ns 0V 20ns 5V 60ns -5V 100ns 5V 120ns 5V 160ns -6V 200ns 5V
VT2 2 0 PWL 0ns 0V 20ns -10V 100ns 10V 120ns -10V 200ns 10V

R1 5 4 800k
R2 2 1 3
R3 3 0 7

M1 5 1 3 3 Mbreakn3 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn3 NMOS level=2 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 200n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test1a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test1b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test1d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos3test1c.png\"> <p>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
          L=5e-6,
          W=2e-6,
          AD=100e-12,
          PD=40e-6,
          AS=100e-12,
          PS=40e-6,
          RD=1,
          RS=1,
          NSUB=4.9999999e16,
      EG=1.11,
          Level=3)                           annotation (extent=[-10,-2; 10,22]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 20e-9,
          5; 60e-9,-5; 100e-9,5; 120e-9,5; 160e-9,-6; 200e-9,5])
                                                 annotation (extent=[50,20; 70,
              40]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[70,10; 90,30]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT2(table=[0,0; 20e-9,
          -10; 100e-9,10; 120e-9,-10; 200e-9,10])
        annotation (extent=[-70,14; -50,-6],  rotation=180);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-90,-40; -70,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[40,-40; 60,-20]);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[20,20; 40,40],   rotation=0);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-40,-6; -20,14], rotation=0);
      BondLib.Electrical.Analog.Spice.R R3(R=7)
        annotation (extent=[20,-20; 40,0],   rotation=0);
    equation
    connect(VT1.n,Ground1. p)             annotation (points=[70,30; 80,30], style(
          color=3,
          rgbcolor={0,0,255},
          fillPattern=1));
    connect(VT2.n,Ground2. p)               annotation (points=[-70,4; -80,4;
              -80,-20], style(
            color=3,
            rgbcolor={0,0,255},
            fillPattern=1));
        connect(Mn1.B,Mn1. S) annotation (points=[10,10; 10,4],
                                                             style(
            color=3,
            rgbcolor={0,0,255},
            fillPattern=1));
    connect(R1.n,VT1. p) annotation (points=[40,30; 50,30], style(color=3,
          rgbcolor={0,0,255}));
    connect(R1.p,Mn1. D) annotation (points=[20,30; 10,30; 10,16], style(
          color=3, rgbcolor={0,0,255}));
    connect(R2.n,Mn1. G) annotation (points=[-20,4; -10,4], style(color=3,
          rgbcolor={0,0,255}));
    connect(R2.p,VT2. p) annotation (points=[-40,4; -45,4; -45,4; -50,4],
        style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.S,R3. p) annotation (points=[10,4; 10,-10; 20,-10], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[40,-10; 50,-10; 50,-20],
        style(color=3, rgbcolor={0,0,255}));
    end mos3test1;

    model mos3test2

      BondLib.Electrical.Analog.Spice.Mp Mp1(
    L=4.9e-6,
        W=5.2e-6,
    Level=3, RD=1, RS=1, TPG=-1,
     GAMMA=1.211640,     THETA=0.1184638,    KAPPA=0.2162577,    ETA=2.7580135E-02,
                         U0=89.16160,                            VT0=-0.8,
                         XJ=0.4e-6,            LD=0.28e-6,           NSUB=4.9999999E+17,
     CJ=6.852E-4,        MJ=0.429,
     CJSW=5.217E-10,     MJSW=0.351,
     CGS0=7.29E-10,      CGD0=7.29E-10,
          VMAX=5.9E+07,
          TOX=1.98E-08,
          EG=1.11,
          PB=1)         annotation (extent=[10,28; 30,52]);

      BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=4.9e-6,
        W=5.2e-6,
      Level=3, RD=1, RS=1, TPG=1,
     GAMMA=1.140501,     THETA=0.8109787,    KAPPA=0.1579183,    ETA=5.0622310E-02,
                         U0=812.5126,        VMAX=1186662,      VT0=0.8,
                         XJ=0.2e-6,            LD=0.1e-6,            NSUB=4.9999999E+16,
     CJ=4.091E-4,        MJ=0.307,
     CJSW=3.078E-10,
     CGS0=3.93E-10,      CGD0=3.93E-10,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          MJSW=0.3)                 annotation (extent=[10,-12; 30,12]);

      annotation (Diagram, experiment(StopTime=1e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 4 0 PWL 0ns 0V 1ns 5V
VR2 1 0 PWL 0ns 0V 100ns 5V
R1 4 3 3

M1 2 1 0 0 Mbreakn2 L=4.9u W=5.2u
M2 3 1 2 3 Mbreakp3 L=4.9u W=5.2u

.MODEL Mbreakn3 NMOS
+ level=3 TPG=1 TOX=1.98e-8 NSUB=4.9999999e10 UO=812.5126e4 VTO=0.8
+ LD=0.1u GAMMA=1.140501 PB=1 RD=1 RS=1 CJ=4.091E-4 MJ=0.307
+ CJSW=3.078E-10 MJSW=0.3 CGDO=3.93E-10 CGSO=3.93E-10 XJ=0.2u VMAX=1186662
+ KAPPA=0.1579183 ETA=5.0622310E-02 THETA=0.8109787

.MODEL Mbreakp3 PMOS
+ level=3 TPG=-1 TOX=1.98e-8 NSUB=4.9999999e11 UO=89.1616e4 VTO=-0.8
+ LD=0.28u GAMMA=1.21164 PB=1 RD=1 RS=1 CJ=6.852E-4 MJ=0.429
+ CJSW=5.217E-10 MJSW=0.351 CGDO=7.29E-10 CGSO=7.29E-10 XJ=0.4u VMAX=5.9e7
+ KAPPA=0.2162577 ETA=2.7580135E-02 THETA=0.1184638

.TRAN 0.1n 100n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test2a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test2b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test2d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <b>level=3</b> <font color=blue><b>circuit fails to simulate in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation terminates with a division by zero:</b></font> <p>
<img src=\"../Images/mos3test2c.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-10,-70; 10,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[30,-70; 50,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-40,-70; -20,-50]);
      BondLib.Electrical.Analog.Spice.R R1(R=3)
        annotation (extent=[-40,20; -20,40], rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                   annotation (extent=[-40,-40; -20,-20],rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR2(V=5, duration=
          100e-9)  annotation (extent=[-10,-40; 10,-20], rotation=270);
    equation
    connect(VR1.n,Ground3. p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50],
                    style(color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-30,-20; -30,0; -30,0; -30,20],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR2.n,Ground1. p) annotation (points=[-1.83691e-015,-40; 0,-40; 0,
              -50],
                  style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.D, Mp1.B) annotation (points=[30,46; 30,40], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mp1.D, R1.p) annotation (points=[30,46; 40,46; 40,60; -30,60;
              -30,40], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, VR2.p) annotation (points=[10,34; 1.83691e-015,34;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, Mn1.S) annotation (points=[30,0; 30,-6], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.S, Ground2.p) annotation (points=[30,-6; 40,-6; 40,-50],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, Mp1.S) annotation (points=[30,6; 40,6; 40,34; 30,34],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.G, VR2.p) annotation (points=[10,-6; 1.83691e-015,-6;
              1.83691e-015,-20], style(color=3, rgbcolor={0,0,255}));
    end mos3test2;

    model mos3test3

      annotation (Diagram, experiment(StopTime=4e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -1V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakn3 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakn3 NMOS level=3 TPG=1 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test3a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test3b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test3d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos3test3c.png\"> <p>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=5e-6,
        W=2e-6,
        AD=100e-12,
        PD=40e-6,
        AS=100e-12,
        PS=40e-6,
        RD=1,
        RS=1,
        NSUB=4.9999999e16,
      EG=1.11,
          Level=3)                           annotation (extent=[-10,28; 10,52]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-60,-60; -40,-40]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
          10e-9,-5; 30e-9,5])
        annotation (extent=[-30,-30; -10,-10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-30,-60; -10,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[40,-60; 60,-40]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-1)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[-60,0; -40,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-30,0; -10,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R3(R=4)
        annotation (extent=[10,0; 30,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R4(R=7)
        annotation (extent=[40,0; 60,20],    rotation=-90);
    equation
    connect(Ground2.p,VT1. n)             annotation (points=[-20,-40; -20,-35;
              -20,-30; -20,-30],
          style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground1. p) annotation (points=[-50,-30; -50,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R1.n,VR1. p) annotation (points=[-50,0; -50,-10], style(color=3,
          rgbcolor={0,0,255}));
    connect(Mn1.D,R1. p) annotation (points=[10,46; 20,46; 20,60; -50,60; -50,
              20], style(color=3, rgbcolor={0,0,255}));
    connect(R2.n,VT1. p) annotation (points=[-20,0; -20,-5; -20,-10; -20,-10],
                style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,Mn1. G) annotation (points=[-20,20; -20,34; -10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[20,0; 20,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R3.p,Mn1. S) annotation (points=[20,20; 20,34; 10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.p,Mn1. B) annotation (points=[50,20; 50,40; 10,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n,Ground4. p) annotation (points=[50,0; 50,-40], style(color=
           3, rgbcolor={0,0,255}));
    end mos3test3;

    model mos3test4

      annotation (Diagram, experiment(StopTime=1e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 5V
VR1 2 0 PWL 0ns -10V 15ns 15V

M1 1 2 0 0 Mbreakp3 L=1u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp3 PMOS level=3 RS=1 RD=1

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test4a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test4b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test4d.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos3test4c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The numerical results obtained by</b></font> <font color=red><b>PSpice</b></font> <font color=blue><b>and</b></font> <font color=red><b>Berkeley Spice-3g</b></font> <font color=blue><b>look very different.  The simulation results obtained by</b></font> <font color=red><b>BondLib</b></font> <font color=blue><b>look almost identical to those obtained by</b></font> <font color=red><b>Berkeley Spice-3g</b></font> <font color=blue><b>except for a fast initial transient.</b></font> <p>

<font color=blue><b>Default steady-state initialization (</b></font><b>Advanced.DefaultSteadyStateInitialization = true</b><font color=blue><b>) worked correctly on this example.  The algorithm did remove the initial transient.</b></font> <p>
<img src=\"../Images/mos3test4e.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
        L=1e-6,
        W=2e-6,
        AD=100e-12,
        AS=100e-12,
        RD=1,
        RS=1,
      EG=1.11,
      PD=40e-6,
      PS=40e-6,
          Level=3)                           annotation (extent=[10,8; 30,32]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=5)
        annotation (extent=[-40,-20; -20,0],
                                         rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-40,-50; -20,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-10,-50; 10,-30]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[30,-50; 50,-30]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(
      V=25,
      offset=-10,
      duration=15e-9)
                   annotation (extent=[-10,-20; 10,0],   rotation=270);
    equation
    connect(Mn1.D,VC1. p)                annotation (points=[30,26; 40,26; 40,
              40; -30,40; -30,0],
                          style(color=3, rgbcolor={0,0,255}));
    connect(VC1.n,Ground1. p)
        annotation (points=[-30,-20; -30,-25; -30,-25; -30,-30],
                                               style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground3. p)
        annotation (points=[30,14; 40,14; 40,-30],
                                            style(color=3, rgbcolor={0,0,255}));
      connect(Mn1.B,Mn1. S)
        annotation (points=[30,20; 30,14],style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground2. p) annotation (points=[-1.83691e-015,-20;
              -1.83691e-015,-25; 0,-25; 0,-30],
                              style(color=3, rgbcolor={0,0,255}));
    connect(VR1.p,Mn1. G) annotation (points=[1.83691e-015,0; 1.83691e-015,14;
              10,14], style(color=3, rgbcolor={0,0,255}));
    end mos3test4;

    model mos3test5

      annotation (experiment(StopTime=4e-008), Diagram,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS test

VR1 4 0 PWL 0ns 0V 1ns -10V
VT1 6 0 PWL 0ns 0V 1ns 0V 10ns -5V 30ns 5V

R1 4 3 800k
R2 6 5 3
R3 0 1 4
R4 0 2 7

M1 3 5 1 2 Mbreakp3 L=5u W=2u AD=100p AS=100p PD=40u PS=40u

.MODEL Mbreakp3 PMOS level=3 NSUB=4.9999999e10 RD=1 RS=1

.TRAN 0.1n 40n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test5a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test5b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test5d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This circuit doesn't simulate at all using</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation dies at time zero with the error message:</b></font> <p>
<img src=\"../Images/mos3test5c.png\"> <p>

<font color=blue><b>The fact that the two versions of</b></font> <font color=red><b>Spice</b></font> <font color=blue><b>disagree on the result makes it difficult to trust in the</b></font> <b>level=3</b> <font color=blue><b>MOSFET models of</b></font> <font color=red><b>Berkeley Spice-3g.</b></font>
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mp Mp1(
        L=5e-6,
        W=2e-6,
        AD=100e-12,
        PD=40e-6,
        AS=100e-12,
        PS=40e-6,
        RD=1,
        RS=1,
        NSUB=4.9999999e16,
      EG=1.11,
          Level=3)                           annotation (extent=[-10,28; 10,52]);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-60,-60; -40,-40]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(table=[0,0; 1e-9,0;
          10e-9,-5; 30e-9,5])
        annotation (extent=[-30,-30; -10,-10],
                                           rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-30,-60; -10,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[10,-60; 30,-40]);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[40,-60; 60,-40]);
      BondLib.Electrical.Analog.Spice.R R1(R=8e5)
        annotation (extent=[-60,0; -40,20],  rotation=-90);
      BondLib.Electrical.Analog.Spice.R R4(R=7)
        annotation (extent=[40,0; 60,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R3(R=4)
        annotation (extent=[10,0; 30,20],    rotation=-90);
      BondLib.Electrical.Analog.Spice.R R2(R=3)
        annotation (extent=[-30,0; -10,20],  rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9, V=-10)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
    equation
    connect(Ground2.p,VT1. n)
        annotation (points=[-20,-40; -20,-35; -20,-30; -20,-30],
                                               style(color=3, rgbcolor={0,0,255}));
    connect(R1.p,Mp1. D) annotation (points=[-50,20; -50,60; 20,60; 20,46; 10,
              46],style(color=3, rgbcolor={0,0,255}));
    connect(R2.n,VT1. p) annotation (points=[-20,0; -20,-5; -20,-10; -20,-10],
                style(color=3, rgbcolor={0,0,255}));
    connect(R2.p,Mp1. G) annotation (points=[-20,20; -20,34; -10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.p,Mp1. S) annotation (points=[20,20; 20,34; 10,34], style(
          color=3, rgbcolor={0,0,255}));
    connect(R3.n,Ground3. p) annotation (points=[20,0; 20,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(R4.p,Mp1. B) annotation (points=[50,20; 50,40; 10,40], style(
          color=3, rgbcolor={0,0,255}));
    connect(R4.n,Ground4. p) annotation (points=[50,0; 50,-40], style(color=
           3, rgbcolor={0,0,255}));
    connect(VR1.n,Ground1. p) annotation (points=[-50,-30; -50,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-50,-10; -50,0], style(color=3,
          rgbcolor={0,0,255}));
    end mos3test5;

    model mos3test6

      BondLib.Electrical.Analog.Spice.Mp Mp1(
    W=5.2e-6, L=1.2e-6,
    Level=3, RD=1, RS=1, XJ=0.4e-6,            LD=0.28e-6,           NSUB=4.9999999E+17,
                         MJ=0.429,
                         MJSW=0.351,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          VMAX=5.9E+07,
          VT0=-0.60865,
          LAMBDA=0.018966,
          KP=7.69968E-06,
          GAMMA=0.89213,
          PHI=1,
          CJ=6.852E-3,
          CJSW=5.217E-9,
          CGD0=7.29E-9,
          CGS0=7.29E-9)      annotation (extent=[20,42; 40,18]);

      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=5.2e-6, L=1.2e-6,
    Level=3, RD=1, RS=1, THETA=0.8109787,    KAPPA=0.1579183,    ETA=5.0622310E-02,
                                             VMAX=1186662,
                         XJ=0.2e-6,            LD=0.1e-6,            NSUB=4.9999999E+16,
                         MJ=0.307,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          MJSW=0.3,
          VT0=0.69486,
          LAMBDA=0.013333,
          KP=2.33082E-05,
          GAMMA=0.60309,
          PHI=1,
          CJ=4.091E-3,
          CJSW=3.078E-9,
          CGD0=3.93E-9,
          CGS0=3.93E-9)      annotation (extent=[20,-12; 40,12]);

      annotation (experiment(StopTime=3e-008), Diagram,
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
CMOS Inverter

VR1 2 0 PWL 0ns 0V 1ns 5V
VR2 3 0 PWL 0ns 0V 10ns 0V 11ns 5V 20ns 5V 21ns 0V
R1 2 1 3

M1 4 3 0 0 Mbreakn3 L=1.2u W=5.2u
M2 4 3 1 1 Mbreakp3 L=1.2u W=5.2u

.MODEL Mbreakn3 NMOS
+ level=3 TOX=1.98e-8 NSUB=4.9999999e10 VTO=0.69486 LAMBDA=0.013333
+ LD=0.1u KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=1 RS=1
+ CJ=4.091e-3 MJ=0.307 CJSW=3.078e-9 MJSW=0.3 CGDO=3.93e-9 CGSO=3.93e-9
+ XJ=0.2u VMAX=1186662 KAPPA=0.1579183 ETA=5.0622310E-02 THETA=0.8109787

.MODEL Mbreakp3 PMOS
+ level=3 TOX=1.98e-8 NSUB=4.9999999e11 VTO=-0.60865 LAMBDA=0.018966
+ LD=0.28u KP=7.69968E-06 GAMMA=0.89213 PHI=1 PB=1 RD=1 RS=1
+ CJ=6.852e-3 MJ=0.429 CJSW=5.217e-9 MJSW=0.351 CGDO=7.29e-9 CGSO=7.29e-9
+ XJ=0.4u VMAX=5.9E+07

.TRAN 0.1n 30n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test6a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test6b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test6d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <b>level=3</b> <font color=blue><b>circuit fails to simulate in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation terminates with a division by zero:</b></font> <p>
<img src=\"../Images/mos3test6c.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[-10,-70; 10,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[40,-70; 60,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-40,-70; -20,-50]);
      BondLib.Electrical.Analog.Spice.R R1(R=3)
        annotation (extent=[-40,10; -20,30], rotation=-90);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(V=5, duration=1e-9)
                   annotation (extent=[-40,-40; -20,-20],rotation=270);
    BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=1e-9,
      width=9e-9,
      falling=1e-9,
      period=30e-9,
      nperiod=1,
      startTime=10e-9) annotation (extent=[-10,-40; 10,-20], rotation=-90);
    equation
    connect(VR1.n,Ground3. p) annotation (points=[-30,-40; -30,-45; -30,-45;
              -30,-50],                                              style(
          color=3, rgbcolor={0,0,255}));
    connect(VR1.p,R1. n) annotation (points=[-30,-20; -30,-5; -30,-5; -30,10],
                                                               style(color=
            3, rgbcolor={0,0,255}));
    connect(VT1.n,Ground1. p) annotation (points=[6.12303e-016,-40;
              6.12303e-016,-46; 0,-46; 0,-50],
                                           style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.G, VT1.p) annotation (points=[20,36; -6.12303e-016,36;
              -6.12303e-016,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.S, R1.p) annotation (points=[40,36; 50,36; 50,60; -30,60;
              -30,30], style(color=3, rgbcolor={0,0,255}));
        connect(Mp1.B, Mp1.S) annotation (points=[40,30; 40,36], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.G, VT1.p) annotation (points=[20,-6; -6.12303e-016,-6;
              -6.12303e-016,-20], style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, Mn1.S) annotation (points=[40,0; 40,-6], style(color=3,
              rgbcolor={0,0,255}));
        connect(Mn1.S, Ground2.p) annotation (points=[40,-6; 50,-6; 50,-50],
            style(color=3, rgbcolor={0,0,255}));
        connect(Mn1.D, Mp1.D) annotation (points=[40,6; 50,6; 50,24; 40,24],
            style(color=3, rgbcolor={0,0,255}));
    end mos3test6;

    model mos3test8

      annotation (Diagram, experiment(StopTime=3e-007),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VT1 3 2 PULSE 0V 5V 2ns 10ns 10ns 26ns 72ns
VT2 4 0 PULSE 0V 5V 12ns 10ns 10ns 26ns 72ns
VT3 5 0 PULSE 0V -5V 22ns 10ns 10ns 26ns 72ns

R1 2 1 1
C1 0 1 0.5p

M1 3 4 1 5 Mbreakn3 L=40u W=60u

.MODEL Mbreakn3 NMOS
+ level=3 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 UO=812.5126e4 VTO=0.8
+ LD=0.1u PB=1 RD=1 RS=1 CJ=4.091e-3 MJ=0.307 CJSW=3.078E-9 MJSW=0.3
+ CGDO=3.93E-9 CGSO=3.93E-9 XJ=0.2u VMAX=1186662
+ KAPPA=0.1579183 ETA=5.0622310E-02 THETA=0.8109787

.TRAN 0.1n 300n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test8a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test8b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test8d.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>The</b></font> <b>level=3</b> <font color=blue><b>circuit fails to simulate in</b></font> <font color=red><b>BondLib</b></font><font color=blue><b>.  The simulation terminates with a division by zero:</b></font> <p>
<img src=\"../Images/mos3test8c.png\"> <p>

<hr> <p>

<b>References:</b> <p>

<ol>
<li>Turchetti, C., P. Prioretti, G. Masetti, E. Profumo, and M. Vanzi (1986), \"A Meyer-Like Approach for the Transient Analysis of Digital MOS IC's,\" <i>IEEE Trans. Computer-aided Design</i>, <b>5</b>(4), pp.499-507.
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-70,10; 70,-10], style(
              color=1,
              rgbcolor={255,0,0},
              fillColor=1,
              rgbfillColor={255,0,0},
              fillPattern=1)),
          Text(
            extent=[-80,80; 80,-80],
            string="!",
            style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=60e-6, L=40e-6,
    Level=3, RD=1, RS=1,
    TPG=1,
    GAMMA=1.140501,     THETA=0.8109787,    KAPPA=0.1579183,    ETA=5.0622310E-02,
                        U0=812.5126,        VMAX=1186662,      VT0=0.8,
                        XJ=0.2e-6,            LD=0.1e-6,            NSUB=4.9999999E+16,
                        MJ=0.307,
          TOX=1.98E-08,
          EG=1.11,
          PB=1,
          CJ=4.091E-3,
          CJSW=3.078E-9,
          CGD0=3.93E-9,
          CGS0=3.93E-9,
          MJSW=0.3)
               annotation (extent=[-50,8; -30,32]);

      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT1(
      V=5,
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      startTime=2e-9)
        annotation (extent=[60,-10; 80,10],  rotation=270);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT2(
      V=5,
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      startTime=12e-9)
        annotation (extent=[-70,-20; -50,0], rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[-70,-50; -50,-30]);
      BondLib.Electrical.Analog.Sources.TrapezoidVoltage VT3(
      rising=10e-9,
      width=26e-9,
      falling=10e-9,
      period=72e-9,
      offset=0,
      V=-5,
      startTime=22e-9)
        annotation (extent=[30,-10; 50,10],  rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[30,-40; 50,-20]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-30,-50; -10,-30]);
      BondLib.Electrical.Analog.Spice.R R1(R=1)
        annotation (extent=[0,-20; 20,0],    rotation=-90);
    BondLib.Electrical.Analog.Spice.C C1(C=5e-13)
      annotation (extent=[-30,-20; -10,0],rotation=-90);
    equation
    connect(VT2.n,Ground2. p)
        annotation (points=[-60,-20; -60,-30], style(color=3, rgbcolor={0,0,255}));
    connect(VT3.n,Ground1. p)
        annotation (points=[40,-10; 40,-20], style(color=3, rgbcolor={0,0,255}));
    connect(R1.n,VT1. n) annotation (points=[10,-20; 10,-50; 70,-50; 70,-10],
        style(color=3, rgbcolor={0,0,255}));
    connect(C1.n,Ground3. p) annotation (points=[-20,-20; -20,-30], style(
          color=3, rgbcolor={0,0,255}));
        connect(VT2.p, Mn1.G) annotation (points=[-60,0; -60,14; -50,14], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.S, C1.p) annotation (points=[-30,14; -20,14; -20,0], style(
              color=3, rgbcolor={0,0,255}));
        connect(R1.p, Mn1.S) annotation (points=[10,0; 10,14; -30,14], style(
              color=3, rgbcolor={0,0,255}));
        connect(Mn1.B, VT3.p) annotation (points=[-30,20; 40,20; 40,10], style(
              color=3, rgbcolor={0,0,255}));
        connect(VT1.p, Mn1.D) annotation (points=[70,10; 70,26; -30,26], style(
              color=3, rgbcolor={0,0,255}));
    end mos3test8;

    model mos3test9

      annotation (Diagram, experiment(StopTime=1e-008),
          Documentation(info="<html>
<font color=red><b>Berkeley Spice3g</b></font> netlist: <p>

<pre>
MOS Test

VC1 1 0 -2V
VT1 2 3 PWL 0ns 0V 1ns 0V 2ns 1V 3ns 1V 4ns 2V 5ns 2V 6ns 3V 7ns 3V 8ns 4V
VT2 3 0 PWL 0ns 0V 9ns 0V 10ns 1V
VT3 4 5 PWL 0ns 0V 1ns 10V 2ns 0V 3ns 10V 4ns 0V 5ns 10V 6ns 0V 7ns 10V 8ns 0V
VT4 5 0 PWL 0ns 0V 8ns 0V 9ns 10V 10ns 0V

M1 4 2 0 1 Mbreakn3 L=40u W=60u AD=100p AS=100p PD=40p PS=40p

.MODEL Mbreakn3 NMOS
+ level=3 TPG=1 TOX=1.98E-12 NSUB=4.9999999e10 VTO=0.69486 LD=0.1u
+ KP=2.33082E-05 GAMMA=0.60309 PHI=1 PB=1 RD=0.1 RS=0.1 CJ=4.091
+ MJ=0.307 CJSW=3.078E-6 MJSW=0.3 CGDO=3.93E-6 CGSO=3.93E-6

.TRAN 0.1n 10n
.END
</pre> <p>

<hr> <p>

Corresponding <font color=red><b>PSpice</b></font> schematic: <p>
<img src=\"../Images/mos1test9a.png\"> <p>

<font color=red><b>PSpice</b></font> simulation results: <p>
<img src=\"../Images/mos3test9b.png\"> <p>

<hr> <p>

<font color=red><b>Berkeley Spice-3g</b></font> simulation results: <p>
<img src=\"../Images/mos3test9d.png\"> <p>

<hr> <p>

<font color=red><b>BondLib</b></font> simulation results: <p>
<img src=\"../Images/mos3test9c.png\"> <p>

<hr> <p>

<font size=5><b><u>Comments:</u></b></font> <p>

<font color=blue><b>This example contains unrealistic parameter values.  No real device will have a junction capacitance of</b></font> <b>CJ = 4.091 F</b><font color=blue><b>.  Hence it is fairly irrelevant, what the software is doing in such a case.</b></font> <p>

<font color=blue><b>Unfortunately, the default steady-state initialization leads to a divergence of the initial Newton iteration in this case:</b></font> <p>
<img src=\"../Images/mos3test9e.png\">
</html>"),Icon(
          Ellipse(extent=[-80,80; 80,-80], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=58,
              rgbfillColor={0,186,0},
              fillPattern=1)),
          Ellipse(extent=[-60,60; 60,-60], style(
              color=58,
              rgbcolor={0,171,0},
              fillColor=7,
              rgbfillColor={255,255,255},
              fillPattern=1)),
          Rectangle(extent=[-68,10; 70,-10], style(
              color=58,
              rgbcolor={0,184,0},
              fillColor=58,
              rgbfillColor={0,188,0},
              fillPattern=1)),
          Polygon(points=[-40,-16; -4,-38; 42,30; 36,34; -6,-28; -36,-10; -40,
                  -16],
              style(
              color=0,
              rgbcolor={0,0,0},
              fillColor=0,
              rgbfillColor={0,0,0},
              fillPattern=1))));
      BondLib.Electrical.Analog.Spice.Mn Mn1(
    W=60e-6, L=40e-6,
    TPG=1,
    KP=2.33082E-05,
    VT0=0.69486, GAMMA=0.60309, PHI=1,
                                    LD=0.1e-6,           NSUB=4.9999999E+16,
    CJ=4.091E0,        MJ=0.307,
    CJSW=3.078E-6,
    CGS0=3.93E-6,      CGD0=3.93E-6,
      TOX=1.98E-12,
      EG=1.11,
      PB=1,
      MJSW=0.3,
      RD=0.1,
      RS=0.1,
          AD=100e-12,
          AS=100e-12,
          PD=40e-12,
          PS=40e-12,
          Level=3)
              annotation (extent=[-40,38; -20,62]);
      BondLib.Electrical.Analog.Sources.TableVoltage VT1(offset=-3, table=[
          0,0; 1e-9,10; 2e-9,0; 3e-9,10; 4e-9,0; 5e-9,10; 6e-9,0; 7e-9,10;
          8e-9,0; 9e-9,10; 10e-9,0])
        annotation (extent=[40,10; 60,30],rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground1
        annotation (extent=[40,-20; 60,0]);
      BondLib.Electrical.Analog.Basic.Ground Ground2
        annotation (extent=[40,-70; 60,-50]);
      BondLib.Electrical.Analog.Basic.Ground Ground3
        annotation (extent=[-20,-20; 0,0]);
      BondLib.Electrical.Analog.Sources.ConstantVoltage VC1(V=-2)
        annotation (extent=[10,10; 30,30],rotation=270);
      BondLib.Electrical.Analog.Basic.Ground Ground4
        annotation (extent=[10,-20; 30,0]);
      BondLib.Electrical.Analog.Sources.RampVoltage VR1(     duration=1e-9,
      V=1,
      startTime=1e-9)
                   annotation (extent=[-60,10; -40,30],  rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR2(     duration=1e-9,
      V=1,
      startTime=3e-9)
                   annotation (extent=[-60,-30; -40,-10],rotation=270);
      BondLib.Electrical.Analog.Sources.RampVoltage VR3(     duration=1e-9,
      V=1,
      startTime=5e-9)
                   annotation (extent=[-40,-50; -20,-30],rotation=0);
      BondLib.Electrical.Analog.Sources.RampVoltage VR4(     duration=1e-9,
      V=1,
      startTime=7e-9)
                   annotation (extent=[-10,-50; 10,-30], rotation=0);
      BondLib.Electrical.Analog.Sources.RampVoltage VR5(     duration=1e-9,
      V=1,
      startTime=9e-9)
                   annotation (extent=[20,-50; 40,-30],  rotation=0);
    equation
    connect(Ground1.p,VT1. n)
        annotation (points=[50,0; 50,10],    style(color=3, rgbcolor={0,0,255}));
    connect(VT1.p,Mn1. D)             annotation (points=[50,30; 50,56; -20,56],
                                                                              style(
            color=3, rgbcolor={0,0,255}));
      connect(Mn1.S,Ground3. p) annotation (points=[-20,44; -10,44; -10,0],
                                                                        style(color=
             3, rgbcolor={0,0,255}));
    connect(Mn1.B,VC1. p)                annotation (points=[-20,50; 20,50; 20,
              30],
          style(color=3, rgbcolor={0,0,255}));
    connect(Ground4.p,VC1. n)                annotation (points=[20,0; 20,5; 20,
              10; 20,10], style(color=3, rgbcolor={0,0,255}));
    connect(Mn1.G,VR1. p) annotation (points=[-40,44; -50,44; -50,30],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR1.n,VR2. p) annotation (points=[-50,10; -50,-10], style(color=
           3, rgbcolor={0,0,255}));
    connect(VR2.n,VR3. p) annotation (points=[-50,-30; -50,-40; -40,-40],
        style(color=3, rgbcolor={0,0,255}));
    connect(VR3.n,VR4. p) annotation (points=[-20,-40; -10,-40], style(
          color=3, rgbcolor={0,0,255}));
    connect(VR4.n,VR5. p) annotation (points=[10,-40; 20,-40], style(color=
            3, rgbcolor={0,0,255}));
    connect(VR5.n,Ground2. p) annotation (points=[40,-40; 50,-40; 50,-50],
        style(color=3, rgbcolor={0,0,255}));
    end mos3test9;

  end level3;

  end transistor;
end Verif;
