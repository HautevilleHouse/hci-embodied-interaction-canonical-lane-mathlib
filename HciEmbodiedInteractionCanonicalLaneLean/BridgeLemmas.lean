import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.motionCapabilities ∧ A.object.sensorimotorLoop ∧ A.object.interactionDynamics

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse
