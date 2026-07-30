import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAExpressionPackage where
  cellType : Type u
  condition : Type v
  expressionLevel : cellType -> condition -> Nat
  differentialExpression : Prop
  tissueSpecificity : Prop
  regulatoryInteraction : Prop

structure LncRNAExpressionEvidence (P : LncRNAExpressionPackage) where
  differentialExpressionClosed : P.differentialExpression
  tissueSpecificityClosed : P.tissueSpecificity
  regulatoryInteractionClosed : P.regulatoryInteraction

def LncRNAExpressionClosed (P : LncRNAExpressionPackage) : Prop :=
  P.differentialExpression ∧ P.tissueSpecificity ∧ P.regulatoryInteraction

theorem lncrna_expression_closed_from_evidence (P : LncRNAExpressionPackage)
    (E : LncRNAExpressionEvidence P) : LncRNAExpressionClosed P := by
  exact And.intro E.differentialExpressionClosed
    (And.intro E.tissueSpecificityClosed E.regulatoryInteractionClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
