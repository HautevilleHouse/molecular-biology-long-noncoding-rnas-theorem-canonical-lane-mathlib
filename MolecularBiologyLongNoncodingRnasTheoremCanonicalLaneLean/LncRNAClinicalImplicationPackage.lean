import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionPackage
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNATargetRegulationModule
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNASecondaryStructurePackage
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAFunctionalMechanismPackage

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAClinicalImplicationPackage {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    {F : LncRNAFunctionalMechanismPackage M S} where
  biomarkerPotential : Prop
  therapeuticTarget : Prop
  diseaseAssociation : Prop
  prognosticValue : Prop

structure LncRNAClinicalImplicationEvidence {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    {F : LncRNAFunctionalMechanismPackage M S}
    (C : LncRNAClinicalImplicationPackage F) where
  biomarkerPotentialClosed : C.biomarkerPotential
  therapeuticTargetClosed : C.therapeuticTarget
  diseaseAssociationClosed : C.diseaseAssociation
  prognosticValueClosed : C.prognosticValue

def LncRNAClinicalImplicationClosed {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    {F : LncRNAFunctionalMechanismPackage M S}
    (C : LncRNAClinicalImplicationPackage F) : Prop :=
  C.biomarkerPotential ∧ C.therapeuticTarget ∧ C.diseaseAssociation ∧ C.prognosticValue

theorem clinical_implication_closed_from_evidence {L : LncRNAExpressionPackage}
    {M : LncRNATargetRegulationModule L} {S : LncRNASecondaryStructurePackage L}
    {F : LncRNAFunctionalMechanismPackage M S}
    (C : LncRNAClinicalImplicationPackage F) (E : LncRNAClinicalImplicationEvidence C) :
    LncRNAClinicalImplicationClosed C := by
  exact And.intro E.biomarkerPotentialClosed
    (And.intro E.therapeuticTargetClosed
      (And.intro E.diseaseAssociationClosed E.prognosticValueClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
