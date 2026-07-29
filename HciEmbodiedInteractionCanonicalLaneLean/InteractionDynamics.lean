import HciEmbodiedInteractionCanonicalLaneLean.EmbodiedCognitionPackage

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure InteractionDynamicsPackage {B : SemioticBodyPackage} {C : EmbodiedCognitionPackage B} where
  turnTaking : Prop
  jointAttention : Prop
  mutualAdaptation : Prop
  emergentCoordination : Prop

structure InteractionDynamicsEvidence {B : SemioticBodyPackage} {C : EmbodiedCognitionPackage B} (D : InteractionDynamicsPackage C) where
  turnTakingClosed : D.turnTaking
  jointAttentionClosed : D.jointAttention
  mutualAdaptationClosed : D.mutualAdaptation
  emergentCoordinationClosed : D.emergentCoordination

def InteractionDynamicsClosed {B : SemioticBodyPackage} {C : EmbodiedCognitionPackage B} (D : InteractionDynamicsPackage C) : Prop :=
  D.turnTaking ∧ D.jointAttention ∧ D.mutualAdaptation ∧ D.emergentCoordination

theorem interaction_dynamics_closed_from_evidence {B : SemioticBodyPackage} {C : EmbodiedCognitionPackage B} (D : InteractionDynamicsPackage C) (E : InteractionDynamicsEvidence D) :
    InteractionDynamicsClosed D := by
  exact And.intro E.turnTakingClosed
    (And.intro E.jointAttentionClosed
      (And.intro E.mutualAdaptationClosed E.emergentCoordinationClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse