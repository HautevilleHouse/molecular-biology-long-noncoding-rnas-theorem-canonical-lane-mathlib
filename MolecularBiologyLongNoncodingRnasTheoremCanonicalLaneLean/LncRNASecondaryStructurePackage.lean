import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionPackage

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNASecondaryStructurePackage (L : LncRNAExpressionPackage) where
  sequence : Type u
  basePairs : sequence -> sequence -> Prop
  helixFormation : Prop
  loopRegions : Prop
  rnaBinding : Prop
  stability : Prop

structure LncRNASecondaryStructureEvidence {L : LncRNAExpressionPackage}
    (S : LncRNASecondaryStructurePackage L) where
  basePairsClosed : ∀ seq1 seq2, S.basePairs seq1 seq2 → ∃ seq3, S.basePairs seq2 seq3
  helixFormationClosed : S.helixFormation
  loopRegionsClosed : S.loopRegions
  rnaBindingClosed : S.rnaBinding
  stabilityClosed : S.stability

def LncRNASecondaryStructureClosed {L : LncRNAExpressionPackage}
    (S : LncRNASecondaryStructurePackage L) : Prop :=
  (∀ seq1 seq2, S.basePairs seq1 seq2 → ∃ seq3, S.basePairs seq2 seq3) ∧
  S.helixFormation ∧ S.loopRegions ∧ S.rnaBinding ∧ S.stability

theorem secondary_structure_closed_from_evidence {L : LncRNAExpressionPackage}
    (S : LncRNASecondaryStructurePackage L) (E : LncRNASecondaryStructureEvidence S) :
    LncRNASecondaryStructureClosed S := by
  exact And.intro E.basePairsClosed
    (And.intro E.helixFormationClosed
      (And.intro E.loopRegionsClosed
        (And.intro E.rnaBindingClosed E.stabilityClosed)))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
