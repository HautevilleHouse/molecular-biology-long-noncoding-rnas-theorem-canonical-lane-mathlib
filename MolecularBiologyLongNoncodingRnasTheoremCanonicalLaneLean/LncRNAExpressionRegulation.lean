import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAExpressionRegulationProcess where
  transcriptionalControl : Prop
  postTranscriptionalModification : Prop
  nuclearRetention : Prop
  cytoplasmicExport : Prop
  stabilityControl : Prop

structure LncRNAExpressionRegulationEvidence (P : LncRNAExpressionRegulationProcess) where
  transcriptionalControlClosed : P.transcriptionalControl
  postTranscriptionalModificationClosed : P.postTranscriptionalModification
  nuclearRetentionClosed : P.nuclearRetention
  cytoplasmicExportClosed : P.cytoplasmicExport
  stabilityControlClosed : P.stabilityControl

def LncRNAExpressionRegulationClosed (P : LncRNAExpressionRegulationProcess) : Prop :=
  P.transcriptionalControl ∧ P.postTranscriptionalModification ∧ P.nuclearRetention ∧ P.cytoplasmicExport ∧ P.stabilityControl

theorem lncRNA_expression_regulation_closed_from_evidence
    (P : LncRNAExpressionRegulationProcess) (E : LncRNAExpressionRegulationEvidence P) :
    LncRNAExpressionRegulationClosed P := by
  exact And.intro E.transcriptionalControlClosed
    (And.intro E.postTranscriptionalModificationClosed
      (And.intro E.nuclearRetentionClosed
        (And.intro E.cytoplasmicExportClosed E.stabilityControlClosed)))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
