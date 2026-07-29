import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HciWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse