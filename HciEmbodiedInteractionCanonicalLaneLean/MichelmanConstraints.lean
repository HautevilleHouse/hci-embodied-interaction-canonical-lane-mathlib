import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure MichelmanConstraints where
  hapticContrast : Prop
  visualGap : Prop
  audioLatency : Prop
  spatialAlignment : Prop
  socialPresence : Prop

structure MichelmanConstraintsEvidence (M : MichelmanConstraints) where
  hapticContrastClosed : M.hapticContrast
  visualGapClosed : M.visualGap
  audioLatencyClosed : M.audioLatency
  spatialAlignmentClosed : M.spatialAlignment
  socialPresenceClosed : M.socialPresence

def MichelmanConstraintsClosed (M : MichelmanConstraints) : Prop :=
  M.hapticContrast ∧ M.visualGap ∧ M.audioLatency ∧ M.spatialAlignment ∧ M.socialPresence

theorem michelman_constraints_closed_from_evidence (M : MichelmanConstraints)
    (E : MichelmanConstraintsEvidence M) : MichelmanConstraintsClosed M := by
  exact And.intro E.hapticContrastClosed
    (And.intro E.visualGapClosed
      (And.intro E.audioLatencyClosed
        (And.intro E.spatialAlignmentClosed E.socialPresenceClosed)))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse