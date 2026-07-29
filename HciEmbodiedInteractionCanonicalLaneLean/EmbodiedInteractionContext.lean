import HciEmbodiedInteractionCanonicalLaneLean.EmbodiedInteractionAdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure InteractionContextPackage where
  taskEnvironment : Type
  userGoals : Prop
  systemAffordances : Prop
  feedbackLoop : Prop
  contextAwareness : Prop

structure InteractionContextEvidence (C : InteractionContextPackage) where
  userGoalsClosed : C.userGoals
  systemAffordancesClosed : C.systemAffordances
  feedbackLoopClosed : C.feedbackLoop
  contextAwarenessClosed : C.contextAwareness

def InteractionContextClosed (C : InteractionContextPackage) : Prop :=
  C.userGoals ∧ C.systemAffordances ∧ C.feedbackLoop ∧ C.contextAwareness

theorem interaction_context_closed_from_evidence
    (C : InteractionContextPackage) (E : InteractionContextEvidence C) :
    InteractionContextClosed C := by
  exact And.intro E.userGoalsClosed
    (And.intro E.systemAffordancesClosed
      (And.intro E.feedbackLoopClosed E.contextAwarenessClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse