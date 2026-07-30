import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackTipField : Type v
  fractureToughness : Prop
  crackPropagationCriterion : Prop
  parisLaw : Prop
  fatigueCrackGrowth : Prop
  fractureModeClassified : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  parisLawClosed : F.parisLaw
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth
  fractureModeClassifiedClosed : F.fractureModeClassified

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagationCriterion ∧ F.parisLaw ∧
  F.fatigueCrackGrowth ∧ F.fractureModeClassified

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.crackPropagationCriterionClosed
      (And.intro E.parisLawClosed
        (And.intro E.fatigueCrackGrowthClosed E.fractureModeClassifiedClosed)))

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse