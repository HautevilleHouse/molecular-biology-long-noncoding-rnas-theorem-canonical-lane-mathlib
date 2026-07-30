import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure SubcellularLocalizationPackage where
  cellCompartment : Type
  lncRNASpecies : Type
  nuclearLocalization : Prop
  cytoplasmicLocalization : Prop
  ribosomeAssociation : Prop
  localizationMechanism : Prop

structure SubcellularLocalizationEvidence (L : SubcellularLocalizationPackage) where
  nuclearLocalizationClosed : L.nuclearLocalization
  cytoplasmicLocalizationClosed : L.cytoplasmicLocalization
  ribosomeAssociationClosed : L.ribosomeAssociation
  localizationMechanismClosed : L.localizationMechanism

def SubcellularLocalizationClosed (L : SubcellularLocalizationPackage) : Prop :=
  L.nuclearLocalization ∧ L.cytoplasmicLocalization ∧
  L.ribosomeAssociation ∧ L.localizationMechanism

theorem subcellular_localization_closed_from_evidence (L : SubcellularLocalizationPackage)
    (Ev : SubcellularLocalizationEvidence L) : SubcellularLocalizationClosed L := by
  exact And.intro Ev.nuclearLocalizationClosed
    (And.intro Ev.cytoplasmicLocalizationClosed
      (And.intro Ev.ribosomeAssociationClosed Ev.localizationMechanismClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse