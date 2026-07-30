import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Type u
  poissonRatio : Type v
  hookesLaw : Prop
  stressStrainRelation : Prop
  elasticDeformation : Prop
  linearElasticity : Prop
  anisotropicElasticity : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  stressStrainRelationClosed : E.stressStrainRelation
  elasticDeformationClosed : E.elasticDeformation
  linearElasticityClosed : E.linearElasticity
  anisotropicElasticityClosed : E.anisotropicElasticity

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.stressStrainRelation ∧ E.elasticDeformation ∧
  E.linearElasticity ∧ E.anisotropicElasticity

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.stressStrainRelationClosed
      (And.intro Ev.elasticDeformationClosed
        (And.intro Ev.linearElasticityClosed Ev.anisotropicElasticityClosed)))

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse