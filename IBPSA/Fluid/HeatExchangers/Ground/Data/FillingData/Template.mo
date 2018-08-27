within IBPSA.Fluid.HeatExchangers.Ground.Data.FillingData;
record Template
  "Template for filling data records"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.ThermalConductivity kFil
    "Thermal conductivity of the borehole filling material";
  parameter Modelica.SIunits.SpecificHeatCapacity cFil
    "Specific heat capacity of the borehole filling material";
  parameter Modelica.SIunits.Density dFil
    "Density of the borehole filling material";
  parameter Boolean steadyState = (cFil < Modelica.Constants.eps or dFil < Modelica.Constants.eps)
    "Flag, if true, then material is computed using steady-state heat conduction"
    annotation(Evaluate=true);
  final parameter Modelica.SIunits.ThermalDiffusivity aFil = kFil/(dFil*cFil)
    "Heat diffusion coefficient of the borehole filling material";
  annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="filDat",
Documentation(
info="<html>
<p>This record is a template for the records in
<a href=\"modelica://IBPSA.Fluid.HeatExchangers.Ground.Data.FillingData\">
IBPSA.Fluid.HeatExchangers.Ground.Data.FillingData</a>.</p>
</html>",
revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
Corrected check of real variable against zero which is not allowed in Modelica.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
end Template;
