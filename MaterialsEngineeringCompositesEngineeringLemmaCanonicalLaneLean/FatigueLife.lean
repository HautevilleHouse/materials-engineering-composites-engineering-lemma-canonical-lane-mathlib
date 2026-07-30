import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure S_N_Curve where
  stressAmplitude : Float
  cyclesToFailure : Float
  enduranceLimit : Float

definition fatigueLife (s : S_N_Curve) (appliedStress : Float) : Float :=
  if appliedStress > s.enduranceLimit then
    (s.stressAmplitude / appliedStress) ^ 3 * s.cyclesToFailure
  else
    Float.inf

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse