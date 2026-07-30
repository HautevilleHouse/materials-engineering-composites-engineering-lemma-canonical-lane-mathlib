import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  strainTensor : Type u
  stressTensor : Type v
  stiffnessTensor : Type w
  youngModulus : Type x
  poissonRatio : Type y
  hookesLaw : Prop
  isotropyAssumption : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  hookesLawClosed : E.hookesLaw
  isotropyAssumptionClosed : E.isotropyAssumption

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.hookesLaw ∧ E.isotropyAssumption

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.hookesLawClosed Ev.isotropyAssumptionClosed

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse