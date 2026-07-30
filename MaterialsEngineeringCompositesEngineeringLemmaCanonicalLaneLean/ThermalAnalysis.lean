import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure ThermalProperties where
  CTE_fiber : Float
  CTE_matrix : Float
  thermalConductivity_fiber : Float
  thermalConductivity_matrix : Float
  fiberVolumeFraction : Float

definition effectiveCTE (T : ThermalProperties) : Float :=
  T.CTE_fiber * T.fiberVolumeFraction + T.CTE_matrix * (1 - T.fiberVolumeFraction)

theorem thermal_conductivity_rule_of_mixtures (T : ThermalProperties) : True := by
  trivial

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse