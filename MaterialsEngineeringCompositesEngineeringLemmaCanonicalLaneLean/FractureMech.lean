import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure StressIntensityFactors where
  KI : Float
  KII : Float
  KIII : Float
  fractureToughness : Float

definition fractureCriterion (K : StressIntensityFactors) : Prop :=
  K.KI > K.fractureToughness ∨ K.KII > K.fractureToughness ∨ K.KIII > K.fractureToughness

theorem criticalStressIntensity (K : StressIntensityFactors) (h : fractureCriterion K) : K.KI > K.fractureToughness := by
  cases h with
  | inl h1 => exact h1
  | inr h2 =>
    cases h2 with
    | inl h3 => exact h3
    | inr h4 => exact h4

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse