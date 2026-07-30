import HautevilleHouse.MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.FractureMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure CompositesMicromechanicsPackage {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} {F : FractureMechanicsPackage C P E} where
  ruleOfMixtures : Prop
  halpinTsaiEquations : Prop
  fiberMatrixInterface : Prop

structure CompositesMicromechanicsEvidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} {F : FractureMechanicsPackage C P E} (M : CompositesMicromechanicsPackage C P E F) where
  ruleOfMixturesClosed : M.ruleOfMixtures
  halpinTsaiEquationsClosed : M.halpinTsaiEquations
  fiberMatrixInterfaceClosed : M.fiberMatrixInterface

def CompositesMicromechanicsClosed {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} {F : FractureMechanicsPackage C P E} (M : CompositesMicromechanicsPackage C P E F) : Prop :=
  M.ruleOfMixtures ∧ M.halpinTsaiEquations ∧ M.fiberMatrixInterface

theorem composites_micromechanics_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramsPackage C} {E : ElasticityPackage C P} {F : FractureMechanicsPackage C P E} (M : CompositesMicromechanicsPackage C P E F) (Ev : CompositesMicromechanicsEvidence M) : CompositesMicromechanicsClosed M := by
  exact And.intro Ev.ruleOfMixturesClosed (And.intro Ev.halpinTsaiEquationsClosed Ev.fiberMatrixInterfaceClosed)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse