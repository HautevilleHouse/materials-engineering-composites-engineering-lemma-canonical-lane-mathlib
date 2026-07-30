import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramEquilibriumPackage where
  temperature : Type u
  pressure : Type v
  phases : Type w
  gibbsFreeEnergy : Type x
  phaseBoundaries : Prop
  leverRule : Prop

structure PhaseDiagramEquilibriumEvidence (P : PhaseDiagramEquilibriumPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  leverRuleClosed : P.leverRule

def PhaseDiagramEquilibriumClosed (P : PhaseDiagramEquilibriumPackage) : Prop :=
  P.phaseBoundaries ∧ P.leverRule

theorem phase_diagram_equilibrium_closed_from_evidence (P : PhaseDiagramEquilibriumPackage) (E : PhaseDiagramEquilibriumEvidence P) : PhaseDiagramEquilibriumClosed P := by
  exact And.intro E.phaseBoundariesClosed E.leverRuleClosed

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse