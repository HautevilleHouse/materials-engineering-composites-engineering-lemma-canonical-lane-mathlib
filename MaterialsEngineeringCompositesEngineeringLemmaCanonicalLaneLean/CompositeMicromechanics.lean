import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure CompositeMicromechanicsPackage where
  fiberMatrixInterface : Type u
  ruleOfMixtures : Prop
  halpinTsaiEquations : Prop
  eshelbyInclusion : Prop
  selfConsistentScheme : Prop
  effectiveElasticProperties : Prop
  thermalExpansionMismatch : Prop

structure CompositeMicromechanicsEvidence (C : CompositeMicromechanicsPackage) where
  ruleOfMixturesClosed : C.ruleOfMixtures
  halpinTsaiEquationsClosed : C.halpinTsaiEquations
  eshelbyInclusionClosed : C.eshelbyInclusion
  selfConsistentSchemeClosed : C.selfConsistentScheme
  effectiveElasticPropertiesClosed : C.effectiveElasticProperties
  thermalExpansionMismatchClosed : C.thermalExpansionMismatch

def CompositeMicromechanicsClosed (C : CompositeMicromechanicsPackage) : Prop :=
  C.ruleOfMixtures ∧ C.halpinTsaiEquations ∧ C.eshelbyInclusion ∧
  C.selfConsistentScheme ∧ C.effectiveElasticProperties ∧ C.thermalExpansionMismatch

theorem composite_micromechanics_closed_from_evidence
    (C : CompositeMicromechanicsPackage) (E : CompositeMicromechanicsEvidence C) :
    CompositeMicromechanicsClosed C := by
  exact And.intro E.ruleOfMixturesClosed
    (And.intro E.halpinTsaiEquationsClosed
      (And.intro E.eshelbyInclusionClosed
        (And.intro E.selfConsistentSchemeClosed
          (And.intro E.effectiveElasticPropertiesClosed
            E.thermalExpansionMismatchClosed))))

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse