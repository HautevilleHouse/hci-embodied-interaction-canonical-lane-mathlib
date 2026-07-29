import HciEmbodiedInteractionCanonicalLaneLean.EmbodiedGateLemmas

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

def ConstrainedEmbodiedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embodied_endgame (A : AdmissibleClass) :
    ConstrainedEmbodiedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse