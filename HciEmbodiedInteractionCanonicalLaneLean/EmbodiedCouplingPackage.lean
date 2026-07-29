import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure EmbodiedCouplingPackage where
  sensorimotorLoop : Prop
  ecologicalAffordances : Prop
  realtimeFeedback : Prop
  couplingStability : Prop

structure EmbodiedCouplingEvidence (E : EmbodiedCouplingPackage) where
  sensorimotorLoopClosed : E.sensorimotorLoop
  ecologicalAffordancesClosed : E.ecologicalAffordances
  realtimeFeedbackClosed : E.realtimeFeedback
  couplingStabilityClosed : E.couplingStability

def EmbodiedCouplingClosed (E : EmbodiedCouplingPackage) : Prop :=
  E.sensorimotorLoop ∧ E.ecologicalAffordances ∧ E.realtimeFeedback ∧ E.couplingStability

theorem embodied_coupling_closed_from_evidence (E : EmbodiedCouplingPackage) (Ev : EmbodiedCouplingEvidence E) :
    EmbodiedCouplingClosed E :=
  And.intro Ev.sensorimotorLoopClosed (And.intro Ev.ecologicalAffordancesClosed (And.intro Ev.realtimeFeedbackClosed Ev.couplingStabilityClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
