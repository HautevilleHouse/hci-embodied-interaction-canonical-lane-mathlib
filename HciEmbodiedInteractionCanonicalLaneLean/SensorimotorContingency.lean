import HciEmbodiedInteractionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SensorimotorContingencyEnvironment where
  actionSpace : Type
  perceptionSpace : Type
  contingencyLaw : actionSpace → perceptionSpace → Prop
  learningDynamics : Prop
  adaptationClosedness : Prop

structure SensorimotorContingencyEvidence (E : SensorimotorContingencyEnvironment) where
  contingencyLawClosed : ∀ a : E.actionSpace, ∀ p : E.perceptionSpace, E.contingencyLaw a p
  learningDynamicsClosed : E.learningDynamics
  adaptationClosednessClosed : E.adaptationClosedness

def SensorimotorContingencyClosed (E : SensorimotorContingencyEnvironment) : Prop :=
  (∀ a : E.actionSpace, ∀ p : E.perceptionSpace, E.contingencyLaw a p) ∧
  E.learningDynamics ∧ E.adaptationClosedness

theorem sensorimotor_contingency_closed_from_evidence
    (E : SensorimotorContingencyEnvironment) (Ev : SensorimotorContingencyEvidence E) :
    SensorimotorContingencyClosed E := by
  exact And.intro Ev.contingencyLawClosed (And.intro Ev.learningDynamicsClosed Ev.adaptationClosednessClosed)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
