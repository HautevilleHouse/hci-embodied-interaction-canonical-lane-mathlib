import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure EmbodiedInteractionObject where
  space : Type u
  topology : TopologicalSpace space
  bodyMorphology : Prop
  interactionDynamics : Prop
  conclusion : bodyMorphology ∧ interactionDynamics

structure AdmissibleClass where
  object : EmbodiedInteractionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.bodyMorphology ∧ A.object.interactionDynamics) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse