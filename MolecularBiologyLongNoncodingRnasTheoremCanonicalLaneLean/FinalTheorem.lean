import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpression
import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.RnaBindingModule
import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.RegulatoryNetwork

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LncRNAExpressionClosed (A.object : LncRNAExpressionPackage)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedLncRNAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lncrna_endgame (A : AdmissibleClass) :
    ConstrainedLncRNAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
