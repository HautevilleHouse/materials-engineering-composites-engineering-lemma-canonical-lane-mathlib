import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure CompositeElasticityTensorPackage where
  fiberMatrixSystem : Type u
  stiffnessTensor : Type v
  complianceTensor : Type w
  effectiveStiffnessHomogenized : Prop
  shearCoupling : Prop
  transverseIsotropy : Prop
  strainCompatibility : Prop

structure CompositeElasticityTensorEvidence (E : CompositeElasticityTensorPackage) where
  effectiveStiffnessHomogenizedClosed : E.effectiveStiffnessHomogenized
  shearCouplingClosed : E.shearCoupling
  transverseIsotropyClosed : E.transverseIsotropy
  strainCompatibilityClosed : E.strainCompatibility

def CompositeElasticityTensorClosed (E : CompositeElasticityTensorPackage) : Prop :=
  E.effectiveStiffnessHomogenized ∧ E.shearCoupling ∧ E.transverseIsotropy ∧ E.strainCompatibility

theorem composite_elasticity_tensor_closed_from_evidence
    (E : CompositeElasticityTensorPackage) (Ev : CompositeElasticityTensorEvidence E) :
    CompositeElasticityTensorClosed E := by
  exact And.intro Ev.effectiveStiffnessHomogenizedClosed
    (And.intro Ev.shearCouplingClosed
      (And.intro Ev.transverseIsotropyClosed Ev.strainCompatibilityClosed))

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse