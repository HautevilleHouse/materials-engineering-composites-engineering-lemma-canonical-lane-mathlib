import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  phaseBoundaries : Prop
  eutecticPoint : Prop
  eutectoidPoint : Prop
  miscibilityGap : Prop
  leverRuleApplicable : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  eutectoidPointClosed : P.eutectoidPoint
  miscibilityGapClosed : P.miscibilityGap
  leverRuleApplicableClosed : P.leverRuleApplicable

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.eutectoidPoint ∧
  P.miscibilityGap ∧ P.leverRuleApplicable

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.eutecticPointClosed
      (And.intro E.eutectoidPointClosed
        (And.intro E.miscibilityGapClosed E.leverRuleApplicableClosed)))

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse