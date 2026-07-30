import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure ChromatinRegulationPackage where
  histoneModification : Prop
  chromatinRemodeler : Prop
  lncrnaRecruitment : Prop
  epigeneticStateChange : Prop

structure ChromatinRegulationEvidence (C : ChromatinRegulationPackage) where
  histoneModificationClosed : C.histoneModification
  chromatinRemodelerClosed : C.chromatinRemodeler
  lncrnaRecruitmentClosed : C.lncrnaRecruitment
  epigeneticStateChangeClosed : C.epigeneticStateChange

def ChromatinRegulationClosed (C : ChromatinRegulationPackage) : Prop :=
  C.histoneModification ∧ C.chromatinRemodeler ∧ C.lncrnaRecruitment ∧ C.epigeneticStateChange

theorem chromatin_regulation_closed_from_evidence
    (C : ChromatinRegulationPackage) (E : ChromatinRegulationEvidence C) :
    ChromatinRegulationClosed C := by
  exact And.intro E.histoneModificationClosed
    (And.intro E.chromatinRemodelerClosed
      (And.intro E.lncrnaRecruitmentClosed E.epigeneticStateChangeClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse