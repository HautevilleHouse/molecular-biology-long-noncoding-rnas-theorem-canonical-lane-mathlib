import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure RnaBindingModule where
  rnaSequence : String
  targetProtein : Type u
  bindingAffinity : Prop
  structuralMotif : Prop
  functionalConsequence : Prop

structure RnaBindingEvidence (M : RnaBindingModule) where
  bindingAffinityClosed : M.bindingAffinity
  structuralMotifClosed : M.structuralMotif
  functionalConsequenceClosed : M.functionalConsequence

def RnaBindingClosed (M : RnaBindingModule) : Prop :=
  M.bindingAffinity ∧ M.structuralMotif ∧ M.functionalConsequence

theorem rna_binding_closed_from_evidence (M : RnaBindingModule)
    (E : RnaBindingEvidence M) : RnaBindingClosed M := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.structuralMotifClosed E.functionalConsequenceClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
