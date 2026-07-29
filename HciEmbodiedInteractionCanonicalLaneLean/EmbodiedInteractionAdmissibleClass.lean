import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EmbodiedInteractionObject where
  carrier : Type
  topology : TopologicalSpace carrier
  bodySchema : Type
  motionCapabilities : Prop
  sensorimotorLoop : Prop
  interactionDynamics : Prop
  conclusion : motionCapabilities ∧ sensorimotorLoop ∧ interactionDynamics

structure AdmissibleClass where
  object : EmbodiedInteractionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.motionCapabilities ∧ A.object.sensorimotorLoop ∧ A.object.interactionDynamics) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
