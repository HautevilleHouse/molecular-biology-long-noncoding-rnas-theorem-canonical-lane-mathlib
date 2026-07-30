import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.ChromatinRegulation

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure GeneExpressionRegulationPackage (C : ChromatinRegulationPackage) where
  transcriptionFactorBinding : Prop
  enhancerPromoterLooping : Prop
  polIIRecruitment : Prop
  mrnaProduction : Prop

structure GeneExpressionRegulationEvidence {C : ChromatinRegulationPackage}
    (G : GeneExpressionRegulationPackage C) where
  transcriptionFactorBindingClosed : G.transcriptionFactorBinding
  enhancerPromoterLoopingClosed : G.enhancerPromoterLooping
  polIIRecruitmentClosed : G.polIIRecruitment
  mrnaProductionClosed : G.mrnaProduction

def GeneExpressionRegulationClosed {C : ChromatinRegulationPackage}
    (G : GeneExpressionRegulationPackage C) : Prop :=
  G.transcriptionFactorBinding ∧ G.enhancerPromoterLooping ∧ G.polIIRecruitment ∧ G.mrnaProduction

theorem gene_expression_regulation_closed_from_evidence
    {C : ChromatinRegulationPackage} (G : GeneExpressionRegulationPackage C)
    (E : GeneExpressionRegulationEvidence G) : GeneExpressionRegulationClosed G := by
  exact And.intro E.transcriptionFactorBindingClosed
    (And.intro E.enhancerPromoterLoopingClosed
      (And.intro E.polIIRecruitmentClosed E.mrnaProductionClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse