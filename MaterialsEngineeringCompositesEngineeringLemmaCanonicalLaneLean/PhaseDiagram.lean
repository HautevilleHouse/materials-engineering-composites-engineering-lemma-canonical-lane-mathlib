import MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagram where
  phases : Type
  transitions : Prop
  triplePoint : Prop
  leverRule : Prop
  tieLine : Prop

def PhaseDiagramClosed (p : PhaseDiagram) : Prop :=
  p.transitions ∧ p.triplePoint ∧ p.leverRule ∧ p.tieLine

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse