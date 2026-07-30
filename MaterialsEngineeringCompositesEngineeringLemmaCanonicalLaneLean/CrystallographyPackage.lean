import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  symmetryGroups : Prop
  millerIndices : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  symmetryGroupsClosed : C.symmetryGroups
  millerIndicesClosed : C.millerIndices

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.symmetryGroups ∧ C.millerIndices

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.symmetryGroupsClosed E.millerIndicesClosed

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse