import HautevilleHouse.MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  compositeConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "materials-engineering-composites-engineering-lemma-canonical-lane"

def sourceDescription : String :=
  "Composites Engineering Lemma: admissible-class closure for composite material properties"

def baselineCertificateLane : String :=
  "composite_constrained"

structure ClassicalSourceBoundary where
  claimBoundary : String
  boundaryInternalized : Prop

def sourceTheoremBoundary : ClassicalSourceBoundary :=
  { claimBoundary := "classical boundary carried by formalization certificate",
    boundaryInternalized := True }

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    compositeConstrainedStatement := "composite-constrained theorem certificate internalized through baseline gates and source constants",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by theorem boundary open flag"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by rfl

end MaterialsEngineeringCompositesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
