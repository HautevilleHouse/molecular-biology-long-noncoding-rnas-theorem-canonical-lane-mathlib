import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.LncRNAExpressionPackage

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAEvolutionaryConservationPackage (L : LncRNAExpressionPackage) where
  sequenceConservation : Prop
  syntenyConservation : Prop
  functionalConservation : Prop
  evolutionaryAge : Prop

structure LncRNAEvolutionaryConservationEvidence {L : LncRNAExpressionPackage}
    (E : LncRNAEvolutionaryConservationPackage L) where
  sequenceConservationClosed : E.sequenceConservation
  syntenyConservationClosed : E.syntenyConservation
  functionalConservationClosed : E.functionalConservation
  evolutionaryAgeClosed : E.evolutionaryAge

def LncRNAEvolutionaryConservationClosed {L : LncRNAExpressionPackage}
    (E : LncRNAEvolutionaryConservationPackage L) : Prop :=
  E.sequenceConservation ∧ E.syntenyConservation ∧
  E.functionalConservation ∧ E.evolutionaryAge

theorem evolutionary_conservation_closed_from_evidence {L : LncRNAExpressionPackage}
    (E : LncRNAEvolutionaryConservationPackage L)
    (Ev : LncRNAEvolutionaryConservationEvidence E) :
    LncRNAEvolutionaryConservationClosed E := by
  exact And.intro Ev.sequenceConservationClosed
    (And.intro Ev.syntenyConservationClosed
      (And.intro Ev.functionalConservationClosed Ev.evolutionaryAgeClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse
