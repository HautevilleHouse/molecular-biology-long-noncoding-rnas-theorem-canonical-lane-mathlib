import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAFunction

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNARegulatoryNetwork where
  lncRNA : LncRNAFunction
  targets : List String
  regulatoryMolecules : List String
  interactionEvidence : Prop
  pathwayImpact : Prop

structure LncRNARegulatoryNetworkEvidence (N : LncRNARegulatoryNetwork) where
  targetsIdentified : N.targets ≠ []
  moleculesIdentified : N.regulatoryMolecules ≠ []
  interactionValidated : N.interactionEvidence
  pathwayLinked : N.pathwayImpact

def LncRNARegulatoryNetworkClosed (N : LncRNARegulatoryNetwork) : Prop :=
  N.targets ≠ [] ∧ N.regulatoryMolecules ≠ [] ∧ N.interactionEvidence ∧ N.pathwayImpact

theorem lncrna_regulatory_network_closed_from_evidence (N : LncRNARegulatoryNetwork)
    (E : LncRNARegulatoryNetworkEvidence N) : LncRNARegulatoryNetworkClosed N := by
  exact And.intro E.targetsIdentified
    (And.intro E.moleculesIdentified
      (And.intro E.interactionValidated E.pathwayLinked))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse