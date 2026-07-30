import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionRegulation

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAFunctionalMechanisms where
  chromatinRemodeling : Prop
  transcriptionalRegulation : Prop
  postTranscriptionalRegulation : Prop
  scaffoldFunction : Prop
  ceRNAActivity : Prop

structure LncRNAFunctionalMechanismsEvidence (M : LncRNAFunctionalMechanisms) where
  chromatinRemodelingClosed : M.chromatinRemodeling
  transcriptionalRegulationClosed : M.transcriptionalRegulation
  postTranscriptionalRegulationClosed : M.postTranscriptionalRegulation
  scaffoldFunctionClosed : M.scaffoldFunction
  ceRNAActivityClosed : M.ceRNAActivity

def LncRNAFunctionalMechanismsClosed (M : LncRNAFunctionalMechanisms) : Prop :=
  M.chromatinRemodeling ∧ M.transcriptionalRegulation ∧ M.postTranscriptionalRegulation ∧ M.scaffoldFunction ∧ M.ceRNAActivity

theorem lncRNA_functional_mechanisms_closed_from_evidence
    (M : LncRNAFunctionalMechanisms) (E : LncRNAFunctionalMechanismsEvidence M) :
    LncRNAFunctionalMechanismsClosed M := by
  exact And.intro E.chromatinRemodelingClosed
    (And.intro E.transcriptionalRegulationClosed
      (And.intro E.postTranscriptionalRegulationClosed
        (And.intro E.scaffoldFunctionClosed E.ceRNAActivityClosed)))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
