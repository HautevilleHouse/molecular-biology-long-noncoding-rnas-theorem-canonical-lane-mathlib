import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAMolecularFunctions

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNADiseaseAssociationPackage where
  cancerRelated : Prop
  neurologicalDisorders : Prop
  cardiovascularDiseases : Prop
  immuneSystemDysregulation : Prop
  biomarkerPotential : Prop

structure LncRNADiseaseAssociationEvidence (D : LncRNADiseaseAssociationPackage) where
  cancerRelatedClosed : D.cancerRelated
  neurologicalDisordersClosed : D.neurologicalDisorders
  cardiovascularDiseasesClosed : D.cardiovascularDiseases
  immuneSystemDysregulationClosed : D.immuneSystemDysregulation
  biomarkerPotentialClosed : D.biomarkerPotential

def LncRNADiseaseAssociationClosed (D : LncRNADiseaseAssociationPackage) : Prop :=
  D.cancerRelated ∧ D.neurologicalDisorders ∧ D.cardiovascularDiseases ∧ D.immuneSystemDysregulation ∧ D.biomarkerPotential

theorem lncRNA_disease_association_closed_from_evidence
    (D : LncRNADiseaseAssociationPackage) (E : LncRNADiseaseAssociationEvidence D) :
    LncRNADiseaseAssociationClosed D := by
  exact And.intro E.cancerRelatedClosed
    (And.intro E.neurologicalDisordersClosed
      (And.intro E.cardiovascularDiseasesClosed
        (And.intro E.immuneSystemDysregulationClosed E.biomarkerPotentialClosed)))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
