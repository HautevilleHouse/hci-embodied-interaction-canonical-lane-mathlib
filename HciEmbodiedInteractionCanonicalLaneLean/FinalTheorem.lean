import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ConstrainedEmbodiedInteractionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embodied_interaction_endgame (A : AdmissibleClass) :
    ConstrainedEmbodiedInteractionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
