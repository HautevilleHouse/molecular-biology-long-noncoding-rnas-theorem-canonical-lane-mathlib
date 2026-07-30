import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAStructure

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNADiscoveryPipeline where
  rnaSeqData : Type
  qualityControlPassed : Prop
  assemblyCompleted : Prop
  transcriptFilteringDone : Prop
  candidateLncRNAs : List LncRNAStructure

structure LncRNADiscoveryEvidence (D : LncRNADiscoveryPipeline) where
  qualityControlPassedClosed : D.qualityControlPassed
  assemblyCompletedClosed : D.assemblyCompleted
  transcriptFilteringDoneClosed : D.transcriptFilteringDone
  candidatesNonempty : D.candidateLncRNAs ≠ []

def LncRNADiscoveryClosed (D : LncRNADiscoveryPipeline) : Prop :=
  D.qualityControlPassed ∧ D.assemblyCompleted ∧ D.transcriptFilteringDone ∧ D.candidateLncRNAs ≠ []

theorem lncrna_discovery_closed_from_evidence (D : LncRNADiscoveryPipeline)
    (E : LncRNADiscoveryEvidence D) : LncRNADiscoveryClosed D := by
  exact And.intro E.qualityControlPassedClosed
    (And.intro E.assemblyCompletedClosed
      (And.intro E.transcriptFilteringDoneClosed E.candidatesNonempty))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse