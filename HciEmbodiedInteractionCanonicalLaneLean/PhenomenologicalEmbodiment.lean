import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciEmbodiedInteractionCanonicalLaneLean

structure PhenomenologicalEmbodimentPackage where
  livedBodySchema : Prop
  bodySchemaExtension : Prop
  tactileProprioceptiveCoupling : Prop
  kinestheticEmpathy : Prop

structure PhenomenologicalEmbodimentEvidence (P : PhenomenologicalEmbodimentPackage) where
  livedBodySchemaClosed : P.livedBodySchema
  bodySchemaExtensionClosed : P.bodySchemaExtension
  tactileProprioceptiveCouplingClosed : P.tactileProprioceptiveCoupling
  kinestheticEmpathyClosed : P.kinestheticEmpathy

def PhenomenologicalEmbodimentClosed (P : PhenomenologicalEmbodimentPackage) : Prop :=
  P.livedBodySchema ∧ P.bodySchemaExtension ∧ P.tactileProprioceptiveCoupling ∧ P.kinestheticEmpathy

theorem phenomenological_embodiment_closed_from_evidence
    (P : PhenomenologicalEmbodimentPackage) (E : PhenomenologicalEmbodimentEvidence P) :
    PhenomenologicalEmbodimentClosed P := by
  exact And.intro E.livedBodySchemaClosed
    (And.intro E.bodySchemaExtensionClosed
      (And.intro E.tactileProprioceptiveCouplingClosed E.kinestheticEmpathyClosed))

end HciEmbodiedInteractionCanonicalLaneLean
end HautevilleHouse