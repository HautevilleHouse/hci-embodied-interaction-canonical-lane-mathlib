import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure SensoryMotorContingencyPackage where
  actionPerceptionLoop : Prop
  sensorimotorRegularities : Prop
  feedbackCoupling : Prop
  skillAcquisition : Prop

structure SensoryMotorContingencyEvidence (S : SensoryMotorContingencyPackage) where
  actionPerceptionLoopClosed : S.actionPerceptionLoop
  sensorimotorRegularitiesClosed : S.sensorimotorRegularities
  feedbackCouplingClosed : S.feedbackCoupling
  skillAcquisitionClosed : S.skillAcquisition

def SensoryMotorContingencyClosed (S : SensoryMotorContingencyPackage) : Prop :=
  S.actionPerceptionLoop ∧ S.sensorimotorRegularities ∧ S.feedbackCoupling ∧ S.skillAcquisition

theorem sensory_motor_contingency_closed_from_evidence
    (S : SensoryMotorContingencyPackage) (E : SensoryMotorContingencyEvidence S) :
    SensoryMotorContingencyClosed S := by
  exact And.intro E.actionPerceptionLoopClosed
    (And.intro E.sensorimotorRegularitiesClosed
      (And.intro E.feedbackCouplingClosed E.skillAcquisitionClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse