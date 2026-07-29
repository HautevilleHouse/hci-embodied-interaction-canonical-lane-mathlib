import HciEmbodiedInteractionCanonicalLaneLean.EmbodiedInteractionAdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.interactionClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.interactionClosed

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse