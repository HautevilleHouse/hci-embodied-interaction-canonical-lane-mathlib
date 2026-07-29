import HciEmbodiedInteractionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure SemioticBodyPackage where
  bodySchema : Type u
  proprioception : Prop
  kinestheticSense : Prop
  bodilyIntentionality : Prop

structure SemioticBodyEvidence (B : SemioticBodyPackage) where
  proprioceptionClosed : B.proprioception
  kinestheticSenseClosed : B.kinestheticSense
  bodilyIntentionalityClosed : B.bodilyIntentionality

def SemioticBodyClosed (B : SemioticBodyPackage) : Prop :=
  B.proprioception ∧ B.kinestheticSense ∧ B.bodilyIntentionality

theorem semiotic_body_closed_from_evidence (B : SemioticBodyPackage) (E : SemioticBodyEvidence B) :
    SemioticBodyClosed B := by
  exact And.intro E.proprioceptionClosed (And.intro E.kinestheticSenseClosed E.bodilyIntentionalityClosed)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse