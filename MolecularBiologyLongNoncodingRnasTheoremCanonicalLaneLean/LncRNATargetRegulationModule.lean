import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionPackage

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNATargetRegulationModule (L : LncRNAExpressionPackage) where
  targetGeneSet : Type w
  regulationMode : targetGeneSet -> Prop
  chromatinRemodeling : Prop
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  spatialLocalization : Prop

structure LncRNATargetRegulationEvidence {L : LncRNAExpressionPackage}
    (M : LncRNATargetRegulationModule L) where
  regulationModeClosed : ∀ g, M.regulationMode g
  chromatinRemodelingClosed : M.chromatinRemodeling
  transcriptionalActivationClosed : M.transcriptionalActivation
  transcriptionalRepressionClosed : M.transcriptionalRepression
  spatialLocalizationClosed : M.spatialLocalization

def LncRNATargetRegulationClosed {L : LncRNAExpressionPackage}
    (M : LncRNATargetRegulationModule L) : Prop :=
  (∀ g, M.regulationMode g) ∧ M.chromatinRemodeling ∧
  M.transcriptionalActivation ∧ M.transcriptionalRepression ∧ M.spatialLocalization

theorem target_regulation_closed_from_evidence {L : LncRNAExpressionPackage}
    (M : LncRNATargetRegulationModule L) (E : LncRNATargetRegulationEvidence M) :
    LncRNATargetRegulationClosed M := by
  exact And.intro E.regulationModeClosed
    (And.intro E.chromatinRemodelingClosed
      (And.intro E.transcriptionalActivationClosed
        (And.intro E.transcriptionalRepressionClosed E.spatialLocalizationClosed)))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
