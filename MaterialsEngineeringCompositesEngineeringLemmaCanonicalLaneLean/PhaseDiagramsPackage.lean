import HautevilleHouse.MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramsPackage {C : CrystallographyPackage} where
  phaseBoundaries : Prop
  eutecticPoint : Prop
  leverRule : Prop

structure PhaseDiagramsEvidence {C : CrystallographyPackage} (P : PhaseDiagramsPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  leverRuleClosed : P.leverRule

def PhaseDiagramsClosed {C : CrystallographyPackage} (P : PhaseDiagramsPackage C) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.leverRule

theorem phase_diagrams_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramsPackage C) (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.eutecticPointClosed E.leverRuleClosed)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse