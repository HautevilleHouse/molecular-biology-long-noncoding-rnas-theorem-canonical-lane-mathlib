import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAStructure where
  sequence : String
  secondaryStructure : Prop
  functionalDomains : List String
  conservedRegions : Prop
  interactingPartners : List String

structure LncRNASecondaryStructureEvidence (L : LncRNAStructure) where
  functionalDomainsClosed : L.functionalDomains ≠ []
  conservedRegionsClosed : L.conservedRegions
  secondaryStructureClosed : L.secondaryStructure

def LncRNAStructureClosed (L : LncRNAStructure) : Prop :=
  L.secondaryStructure ∧ L.conservedRegions ∧ L.functionalDomains ≠ []

theorem lncrna_structure_closed_from_evidence (L : LncRNAStructure)
    (E : LncRNASecondaryStructureEvidence L) : LncRNAStructureClosed L := by
  exact And.intro E.secondaryStructureClosed
    (And.intro E.conservedRegionsClosed E.functionalDomainsClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse