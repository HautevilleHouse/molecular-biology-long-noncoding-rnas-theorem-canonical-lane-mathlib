import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAStructure

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAFunction where
  lncRNA : LncRNAStructure
  molecularMechanism : String
  cellularProcess : String
  phenotype : String
  experimentalValidation : Prop

structure LncRNAFunctionEvidence (F : LncRNAFunction) where
  mechanismIdentified : F.molecularMechanism ≠ ""
  processLinked : F.cellularProcess ≠ ""
  phenotypeAssociated : F.phenotype ≠ ""
  validated : F.experimentalValidation

def LncRNAFunctionClosed (F : LncRNAFunction) : Prop :=
  F.molecularMechanism ≠ "" ∧ F.cellularProcess ≠ "" ∧ F.phenotype ≠ "" ∧ F.experimentalValidation

theorem lncrna_function_closed_from_evidence (F : LncRNAFunction)
    (E : LncRNAFunctionEvidence F) : LncRNAFunctionClosed F := by
  exact And.intro E.mechanismIdentified
    (And.intro E.processLinked
      (And.intro E.phenotypeAssociated E.validated))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse