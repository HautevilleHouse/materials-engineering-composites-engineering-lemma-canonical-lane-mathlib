import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.CompositeElasticityTensor
import MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.FractureToughnessBridging

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

def MaterialsCompositesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem materials_composites_endgame (A : AdmissibleClass) :
    MaterialsCompositesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse