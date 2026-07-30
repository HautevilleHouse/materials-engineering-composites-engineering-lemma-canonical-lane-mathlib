import HautevilleHouse.MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.PhaseDiagramsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} (E : ElasticityPackage C P) where
  hookesLawClosed : E.hookesLaw
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} (E : ElasticityPackage C P) : Prop :=
  E.hookesLaw ∧ E.youngModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} (E : ElasticityPackage C P) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse