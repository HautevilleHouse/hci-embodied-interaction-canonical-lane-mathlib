import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure AffectiveLoopPackage where
  physiologicalSensing : Prop
  emotionalExpression : Prop
  adaptiveResponse : Prop
  userEngagement : Prop

structure AffectiveLoopEvidence (A : AffectiveLoopPackage) where
  physiologicalSensingClosed : A.physiologicalSensing
  emotionalExpressionClosed : A.emotionalExpression
  adaptiveResponseClosed : A.adaptiveResponse
  userEngagementClosed : A.userEngagement

def AffectiveLoopClosed (A : AffectiveLoopPackage) : Prop :=
  A.physiologicalSensing ∧ A.emotionalExpression ∧ A.adaptiveResponse ∧ A.userEngagement

theorem affective_loop_closed_from_evidence
    (A : AffectiveLoopPackage) (E : AffectiveLoopEvidence A) :
    AffectiveLoopClosed A := by
  exact And.intro E.physiologicalSensingClosed
    (And.intro E.emotionalExpressionClosed
      (And.intro E.adaptiveResponseClosed E.userEngagementClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse