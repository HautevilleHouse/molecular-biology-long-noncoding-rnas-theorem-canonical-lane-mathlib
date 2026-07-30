import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNARegulatoryNetwork

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAClinicalImplication where
  network : LncRNARegulatoryNetwork
  diseaseAssociation : Prop
  biomarkerPotential : Prop
  therapeuticTarget : Prop
  clinicalTrialStatus : String

structure LncRNAClinicalImplicationEvidence (C : LncRNAClinicalImplication) where
  diseaseLinked : C.diseaseAssociation
  biomarkerValid : C.biomarkerPotential
  therapeuticPotential : C.therapeuticTarget
  trialStatusKnown : C.clinicalTrialStatus ≠ ""

def LncRNAClinicalImplicationClosed (C : LncRNAClinicalImplication) : Prop :=
  C.diseaseAssociation ∧ C.biomarkerPotential ∧ C.therapeuticTarget ∧ C.clinicalTrialStatus ≠ ""

theorem lncrna_clinical_implication_closed_from_evidence (C : LncRNAClinicalImplication)
    (E : LncRNAClinicalImplicationEvidence C) : LncRNAClinicalImplicationClosed C := by
  exact And.intro E.diseaseLinked
    (And.intro E.biomarkerValid
      (And.intro E.therapeuticPotential E.trialStatusKnown))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse