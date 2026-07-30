import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure ThermalPropertiesPackage where
  thermalConductivity : Type u
  specificHeat : Type v
  thermalExpansion : Type w
  heatEquation : Prop
  thermalResistance : Prop

structure ThermalPropertiesEvidence (T : ThermalPropertiesPackage) where
  heatEquationClosed : T.heatEquation
  thermalResistanceClosed : T.thermalResistance

def ThermalPropertiesClosed (T : ThermalPropertiesPackage) : Prop :=
  T.heatEquation ∧ T.thermalResistance

theorem thermal_properties_closed_from_evidence (T : ThermalPropertiesPackage) (E : ThermalPropertiesEvidence T) : ThermalPropertiesClosed T := by
  exact And.intro E.heatEquationClosed E.thermalResistanceClosed

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse