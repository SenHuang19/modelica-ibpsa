within IBPSA.Fluid.HeatExchangers.Ground;
model BorefieldOneUTube
  "Borefield model containing single U-Tube boreholes"
  extends IBPSA.Fluid.HeatExchangers.Ground.BaseClasses.PartialBorefield(
    redeclare IBPSA.Fluid.HeatExchangers.Ground.Boreholes.BoreholeOneUTube borHol);

  annotation (
  defaultComponentName="borFie",
  Documentation(info="<html>
<p>
This model simulates a borefield containing one or many single U-Tube boreholes
using the parameters in the <code>borFieDat</code> record.
</p>
<p>
Heat transfer to the soil is modeled using only one borehole heat exchanger. The
fluid mass flow rate into the borehole is divided to reflect the per-borehole
fluid mass flow rate. The borehole model calculates the dynamics within the
borehole itself using an axial discretization and a resistance-capacitance
network for the internal thermal resistances between the individual pipes and
between each pipe and the borehole wall.
</p>
</html>", revisions="<html>
<ul>
<li>
July 2018, by Alex Laferri&egrave;re:<br/>
Extended partial model and changed documentation to reflect the new approach
used by the borefield models.
</li>
<li>
July 2014, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
end BorefieldOneUTube;
