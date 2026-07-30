import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAExpressionPackage where
  cellType : Type
  condition : Type
  expressionLevel : cellType -> condition -> ℝ
  normalizedCounts : Prop
  replicateConsistency : Prop
  baselineExpression : Prop

structure LncRNAExpressionEvidence (E : LncRNAExpressionPackage) where
  normalizedCountsClosed : E.normalizedCounts
  replicateConsistencyClosed : E.replicateConsistency
  baselineExpressionClosed : E.baselineExpression

def LncRNAExpressionClosed (E : LncRNAExpressionPackage) : Prop :=
  E.normalizedCounts ∧ E.replicateConsistency ∧ E.baselineExpression

theorem lncrna_expression_closed_from_evidence (E : LncRNAExpressionPackage)
    (Ev : LncRNAExpressionEvidence E) : LncRNAExpressionClosed E := by
  exact And.intro Ev.normalizedCountsClosed
    (And.intro Ev.replicateConsistencyClosed Ev.baselineExpressionClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse