import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HciEmbodiedObject where
  interactionScenario : Type
  embodiment : Prop
  cognitionLoop : Prop
  constraintBridge : Prop
  conclusion : constraintBridge

def HciWitnessClosed (O : HciEmbodiedObject) : Prop :=
  O.constraintBridge

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse