import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  latticeParameters : Type v
  symmetryGroup : Type w
  unitCellGeometry : Prop
  diffractionPattern : Prop
  crystalSystemClassified : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellGeometryClosed : C.unitCellGeometry
  diffractionPatternClosed : C.diffractionPattern
  crystalSystemClassifiedClosed : C.crystalSystemClassified

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellGeometry ∧ C.diffractionPattern ∧ C.crystalSystemClassified

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.unitCellGeometryClosed
    (And.intro E.diffractionPatternClosed E.crystalSystemClassifiedClosed)

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse