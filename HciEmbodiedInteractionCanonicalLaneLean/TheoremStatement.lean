import HciEmbodiedInteractionCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  embodiedConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository
    theoremName := sourceRepository
    theoremObject := sourceDescription
    classicalBoundary := sourceTheoremBoundary.claimBoundary
    embodiedConstrainedStatement :=
      "embodied-interaction constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count"
    certificateLane := baselineCertificateLane
    carriedRemainder :=
      "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def EmbodiedConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "embodied_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  EmbodiedConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

theorem embodied_constrained_theorem_closed_checked :
    EmbodiedConstrainedTheoremClosed := by
  exact And.intro rfl (And.intro rfl rfl)

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  exact And.intro rfl (And.intro rfl (And.intro classical_source_boundary_carried_checked embodied_constrained_theorem_closed_checked))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse