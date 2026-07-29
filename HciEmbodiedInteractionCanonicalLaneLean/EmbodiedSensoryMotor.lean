import HciEmbodiedInteractionCanonicalLaneLean.EmbodiedInteractionContext

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure SensoryMotorPackage {C : InteractionContextPackage} where
  sensorimotorContingencies : Prop
  actionPerceptionLoop : Prop
  ecologicalValidy : Prop
  userEmbodiment : Prop

structure SensoryMotorEvidence {C : InteractionContextPackage}
    (S : SensoryMotorPackage C) where
  sensorimotorContingenciesClosed : S.sensorimotorContingencies
  actionPerceptionLoopClosed : S.actionPerceptionLoop
  ecologicalValidyClosed : S.ecologicalValidy
  userEmbodimentClosed : S.userEmbodiment

def SensoryMotorClosed {C : InteractionContextPackage}
    (S : SensoryMotorPackage C) : Prop :=
  S.sensorimotorContingencies ∧ S.actionPerceptionLoop ∧
  S.ecologicalValidy ∧ S.userEmbodiment

theorem sensory_motor_closed_from_evidence
    {C : InteractionContextPackage} (S : SensoryMotorPackage C)
    (E : SensoryMotorEvidence S) : SensoryMotorClosed S := by
  exact And.intro E.sensorimotorContingenciesClosed
    (And.intro E.actionPerceptionLoopClosed
      (And.intro E.ecologicalValidyClosed E.userEmbodimentClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse