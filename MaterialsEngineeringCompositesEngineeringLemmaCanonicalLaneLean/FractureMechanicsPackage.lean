import HautevilleHouse.MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.ElasticityPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} where
  stressIntensityFactor : Prop
  crackPropagation : Prop
  fractureToughness : Prop

structure FractureMechanicsEvidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  crackPropagationClosed : F.crackPropagation
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) : Prop :=
  F.stressIntensityFactor ∧ F.crackPropagation ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} (F : FractureMechanicsPackage C P E) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.stressIntensityFactorClosed (And.intro Ev.crackPropagationClosed Ev.fractureToughnessClosed)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse