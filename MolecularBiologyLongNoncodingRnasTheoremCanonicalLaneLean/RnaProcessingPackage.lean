import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.GeneExpressionRegulation

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure RnaProcessingPackage {C : ChromatinRegulationPackage}
    (G : GeneExpressionRegulationPackage C) where
  splicing : Prop
  nuclearExport : Prop
  stability : Prop
  translationRegulation : Prop

structure RnaProcessingEvidence {C : ChromatinRegulationPackage}
    {G : GeneExpressionRegulationPackage C} (R : RnaProcessingPackage G) where
  splicingClosed : R.splicing
  nuclearExportClosed : R.nuclearExport
  stabilityClosed : R.stability
  translationRegulationClosed : R.translationRegulation

def RnaProcessingClosed {C : ChromatinRegulationPackage}
    {G : GeneExpressionRegulationPackage C} (R : RnaProcessingPackage G) : Prop :=
  R.splicing ∧ R.nuclearExport ∧ R.stability ∧ R.translationRegulation

theorem rna_processing_closed_from_evidence
    {C : ChromatinRegulationPackage} {G : GeneExpressionRegulationPackage C}
    (R : RnaProcessingPackage G) (E : RnaProcessingEvidence R) :
    RnaProcessingClosed R := by
  exact And.intro E.splicingClosed
    (And.intro E.nuclearExportClosed
      (And.intro E.stabilityClosed E.translationRegulationClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse