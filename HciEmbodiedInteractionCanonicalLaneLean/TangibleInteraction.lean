import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure TangibleInteractionPackage where
  physicalRepresentation : Prop
  digitalFeedback : Prop
  directManipulation : Prop
  spatialArrangement : Prop

structure TangibleInteractionEvidence (T : TangibleInteractionPackage) where
  physicalRepresentationClosed : T.physicalRepresentation
  digitalFeedbackClosed : T.digitalFeedback
  directManipulationClosed : T.directManipulation
  spatialArrangementClosed : T.spatialArrangement

def TangibleInteractionClosed (T : TangibleInteractionPackage) : Prop :=
  T.physicalRepresentation ∧ T.digitalFeedback ∧ T.directManipulation ∧ T.spatialArrangement

theorem tangible_interaction_closed_from_evidence
    (T : TangibleInteractionPackage) (E : TangibleInteractionEvidence T) :
    TangibleInteractionClosed T := by
  exact And.intro E.physicalRepresentationClosed
    (And.intro E.digitalFeedbackClosed
      (And.intro E.directManipulationClosed E.spatialArrangementClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse