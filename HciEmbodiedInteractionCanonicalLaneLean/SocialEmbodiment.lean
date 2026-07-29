import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure SocialEmbodimentPackage where
  jointAction : Prop
  nonverbalCues : Prop
  sharedSpace : Prop
  intersubjectivity : Prop

structure SocialEmbodimentEvidence (S : SocialEmbodimentPackage) where
  jointActionClosed : S.jointAction
  nonverbalCuesClosed : S.nonverbalCues
  sharedSpaceClosed : S.sharedSpace
  intersubjectivityClosed : S.intersubjectivity

def SocialEmbodimentClosed (S : SocialEmbodimentPackage) : Prop :=
  S.jointAction ∧ S.nonverbalCues ∧ S.sharedSpace ∧ S.intersubjectivity

theorem social_embodiment_closed_from_evidence
    (S : SocialEmbodimentPackage) (E : SocialEmbodimentEvidence S) :
    SocialEmbodimentClosed S := by
  exact And.intro E.jointActionClosed
    (And.intro E.nonverbalCuesClosed
      (And.intro E.sharedSpaceClosed E.intersubjectivityClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse