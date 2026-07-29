import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure InteractionModalityPackage where
  tactile : Prop
  kinesthetic : Prop
  proprioceptive : Prop
  multimodalIntegration : Prop

structure InteractionModalityEvidence (M : InteractionModalityPackage) where
  tactileClosed : M.tactile
  kinestheticClosed : M.kinesthetic
  proprioceptiveClosed : M.proprioceptive
  multimodalIntegrationClosed : M.multimodalIntegration

def InteractionModalityClosed (M : InteractionModalityPackage) : Prop :=
  M.tactile ∧ M.kinesthetic ∧ M.proprioceptive ∧ M.multimodalIntegration

theorem interaction_modality_closed_from_evidence (M : InteractionModalityPackage) (Ev : InteractionModalityEvidence M) :
    InteractionModalityClosed M :=
  And.intro Ev.tactileClosed (And.intro Ev.kinestheticClosed (And.intro Ev.proprioceptiveClosed Ev.multimodalIntegrationClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
