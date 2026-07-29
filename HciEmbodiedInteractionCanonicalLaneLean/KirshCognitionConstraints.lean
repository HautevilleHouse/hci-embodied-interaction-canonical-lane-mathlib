import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure KirshCognitionConstraints where
  distributedCognition : Prop
  manipulationEpistemic : Prop
  coordination : Prop
  spatialLayout : Prop
  interactionEconomy : Prop

structure KirshCognitionConstraintsEvidence (K : KirshCognitionConstraints) where
  distributedCognitionClosed : K.distributedCognition
  manipulationEpistemicClosed : K.manipulationEpistemic
  coordinationClosed : K.coordination
  spatialLayoutClosed : K.spatialLayout
  interactionEconomyClosed : K.interactionEconomy

def KirshCognitionConstraintsClosed (K : KirshCognitionConstraints) : Prop :=
  K.distributedCognition ∧ K.manipulationEpistemic ∧ K.coordination ∧ K.spatialLayout ∧ K.interactionEconomy

theorem kirsh_cognition_constraints_closed_from_evidence (K : KirshCognitionConstraints)
    (E : KirshCognitionConstraintsEvidence K) : KirshCognitionConstraintsClosed K := by
  exact And.intro E.distributedCognitionClosed
    (And.intro E.manipulationEpistemicClosed
      (And.intro E.coordinationClosed
        (And.intro E.spatialLayoutClosed E.interactionEconomyClosed)))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse