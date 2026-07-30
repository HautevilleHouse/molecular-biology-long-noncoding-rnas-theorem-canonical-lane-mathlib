import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAExpressionPackage where
  cellType : Type u
  condition : Type v
  expressionLevel : cellType -> condition -> ℝ
  baselineExpression : Prop
  differentialExpression : Prop
  tissueSpecificity : Prop

structure LncRNAExpressionEvidence (L : LncRNAExpressionPackage) where
  baselineExpressionClosed : L.baselineExpression
  differentialExpressionClosed : L.differentialExpression
  tissueSpecificityClosed : L.tissueSpecificity

def LncRNAExpressionClosed (L : LncRNAExpressionPackage) : Prop :=
  L.baselineExpression ∧ L.differentialExpression ∧ L.tissueSpecificity

theorem lncrna_expression_closed_from_evidence (L : LncRNAExpressionPackage)
    (E : LncRNAExpressionEvidence L) : LncRNAExpressionClosed L := by
  exact And.intro E.baselineExpressionClosed
    (And.intro E.differentialExpressionClosed E.tissueSpecificityClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
