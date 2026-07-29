import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure DourishEmbodimentPackage where
  embodiedInteraction : Prop
  digitalArtefact : Prop
  actionPractice : Prop
  meaningConstruction : Prop
  socialContext : Prop

structure DourishEmbodimentEvidence (D : DourishEmbodimentPackage) where
  embodiedInteractionClosed : D.embodiedInteraction
  digitalArtefactClosed : D.digitalArtefact
  actionPracticeClosed : D.actionPractice
  meaningConstructionClosed : D.meaningConstruction
  socialContextClosed : D.socialContext

def DourishEmbodimentClosed (D : DourishEmbodimentPackage) : Prop :=
  D.embodiedInteraction ∧ D.digitalArtefact ∧ D.actionPractice ∧ D.meaningConstruction ∧ D.socialContext

theorem dourish_embodiment_closed_from_evidence (D : DourishEmbodimentPackage)
    (E : DourishEmbodimentEvidence D) : DourishEmbodimentClosed D := by
  exact And.intro E.embodiedInteractionClosed
    (And.intro E.digitalArtefactClosed
      (And.intro E.actionPracticeClosed
        (And.intro E.meaningConstructionClosed E.socialContextClosed)))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse