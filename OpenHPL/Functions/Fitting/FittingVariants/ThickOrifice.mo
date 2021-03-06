within OpenHPL.Functions.Fitting.FittingVariants;
function ThickOrifice
  extends Modelica.Icons.Function;
  input Modelica.SIunits.ReynoldsNumber N_Re "Reynolds number";
  input Modelica.SIunits.Height eps "Pipe roughness height";
  input Modelica.SIunits.Diameter D_i, D_o "Pipe diameters";
  input Modelica.SIunits.Length L;
  output Real phi;
protected
  Real phi_0;
algorithm
  phi_0 := (1 - (D_o / D_i) ^ 2) * ((D_i / D_o) ^ 4 - 1);
  if L / D_o <= 5 then
    phi := (0.584 + 0.0936 / ((L / D_o) ^ 1.5 + 0.225)) * phi_0;
  end if;
  annotation (
    Documentation(info = "<html>
    <p>Define dimension factor &phi; for Thick Orifice.  
    Orifice length should be provided and this length should not be greater than 5D<sub>o</sub>.</p>
<p><img src=\"modelica://OpenHPL/Resources/Images/orifices.png\"/></p>
</html>"));
end ThickOrifice;
