import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure RegulatoryNetwork where
  geneNodes : Type u
  lncRNANodes : Type v
  edges : Type w
  transcriptionalRegulation : Prop
  epigeneticModification : Prop
  feedbackLoops : Prop

structure RegulatoryNetworkEvidence (N : RegulatoryNetwork) where
  transcriptionalRegulationClosed : N.transcriptionalRegulation
  epigeneticModificationClosed : N.epigeneticModification
  feedbackLoopsClosed : N.feedbackLoops

def RegulatoryNetworkClosed (N : RegulatoryNetwork) : Prop :=
  N.transcriptionalRegulation ∧ N.epigeneticModification ∧ N.feedbackLoops

theorem regulatory_network_closed_from_evidence (N : RegulatoryNetwork)
    (E : RegulatoryNetworkEvidence N) : RegulatoryNetworkClosed N := by
  exact And.intro E.transcriptionalRegulationClosed
    (And.intro E.epigeneticModificationClosed E.feedbackLoopsClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
