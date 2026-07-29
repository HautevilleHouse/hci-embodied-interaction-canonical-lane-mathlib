import HciEmbodiedInteractionCanonicalLaneLean.SensorimotorContingency

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure EmbodiedCognitionPackage (E : SensorimotorContingencyEnvironment) where
  bodySchemaIntegrated : Prop
  actionPerceptionLoop : Prop
  affectiveRegulation : Prop
  socialInteractionCapacity : Prop

structure EmbodiedCognitionEvidence (E : SensorimotorContingencyEnvironment) (C : EmbodiedCognitionPackage E) where
  bodySchemaIntegratedClosed : C.bodySchemaIntegrated
  actionPerceptionLoopClosed : C.actionPerceptionLoop
  affectiveRegulationClosed : C.affectiveRegulation
  socialInteractionCapacityClosed : C.socialInteractionCapacity

def EmbodiedCognitionClosed (E : SensorimotorContingencyEnvironment) (C : EmbodiedCognitionPackage E) : Prop :=
  C.bodySchemaIntegrated ∧ C.actionPerceptionLoop ∧ C.affectiveRegulation ∧ C.socialInteractionCapacity

theorem embodied_cognition_closed_from_evidence
    (E : SensorimotorContingencyEnvironment) (C : EmbodiedCognitionPackage E)
    (Ev : EmbodiedCognitionEvidence E C) : EmbodiedCognitionClosed E C := by
  exact And.intro Ev.bodySchemaIntegratedClosed
    (And.intro Ev.actionPerceptionLoopClosed
      (And.intro Ev.affectiveRegulationClosed Ev.socialInteractionCapacityClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
