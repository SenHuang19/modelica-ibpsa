within Annex60.Fluid.HeatExchangers.Examples;
model AirHeater_u
  "Example model for the heater with prescribed heat input and air as the medium"
  extends Modelica.Icons.Example;
  extends Annex60.Fluid.HeatExchangers.Examples.BaseClasses.Heater(
    redeclare package Medium = Annex60.Media.Air,
    V=6*6*2.7,
    m_flow_nominal=V*1.2*6/3600,
    Q_flow_nominal=30*6*6);

  HeaterCooler_u hea(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    dp_nominal=1000,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    Q_flow_nominal=Q_flow_nominal) "Heater"
    annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
equation
  connect(fan.port_b, hea.port_a) annotation (Line(
      points={{-50,-40},{-20,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(hea.port_b, THeaOut.port_a) annotation (Line(
      points={{0,-40},{20,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(conPI.y, hea.u) annotation (Line(
      points={{-39,30},{-30,30},{-30,-34},{-22,-34}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation ( Documentation(info="<html>
<p>
This example illustrates how to use the heater model that takes as an
input the heat added to the medium.
</p>
<p>
The model consist of an air volume with heat loss to the ambient.
The set point of the air temperature is different between night and day.
The heater tracks the set point temperature, except for the periods in
which the air temperature is above the set point.
</p>
<p>
See
<a href=\"modelica://Annex60.Fluid.HeatExchangers.Examples.AirHeater_T\">
Annex60.Fluid.HeatExchangers.Examples.AirHeater_T</a>
for a model that takes the leaving air temperature as an input.
</p>
</html>", revisions="<html>
<ul>
<li>
November 12, 2014, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),
    __Dymola_Commands(file= "modelica://Annex60/Resources/Scripts/Dymola/Fluid/HeatExchangers/Examples/AirHeater_u.mos"
        "Simulate and plot"),
    experiment(
      StopTime=172800,
      Tolerance=1e-05));
end Heater_u;

