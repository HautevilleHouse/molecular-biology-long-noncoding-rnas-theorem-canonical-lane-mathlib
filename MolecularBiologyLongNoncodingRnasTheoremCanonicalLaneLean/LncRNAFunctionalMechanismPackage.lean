import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionPackage
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNATargetRegulationModule
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNASecondaryStructurePackage

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAFunctionalMechanismPackage {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L} where
  molecularScaffold : Prop
  decoyElement : Prop
  guideFunction : Prop
  signalElement : Prop

structure LncRNAFunctionalMechanismEvidence {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    (F : LncRNAFunctionalMechanismPackage M S) where
  molecularScaffoldClosed : F.molecularScaffold
  decoyElementClosed : F.decoyElement
  guideFunctionClosed : F.guideFunction
  signalElementClosed : F.signalElement

def LncRNAFunctionalMechanismClosed {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    (F : LncRNAFunctionalMechanismPackage M S) : Prop :=
  F.molecularScaffold ∧ F.decoyElement ∧ F.guideFunction ∧ F.signalElement

theorem functional_mechanism_closed_from_evidence {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    (F : LncRNAFunctionalMechanismPackage M S) (E : LncRNAFunctionalMechanismEvidence F) :
    LncRNAFunctionalMechanismClosed F := by
  exact And.intro E.molecularScaffoldClosed
    (And.intro E.decoyElementClosed
      (And.intro E.guideFunctionClosed E.signalElementClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
