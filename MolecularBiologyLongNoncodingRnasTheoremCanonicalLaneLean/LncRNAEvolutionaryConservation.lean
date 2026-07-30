import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure EvolutionaryConservationPackage where
  speciesSet : Type
  lncRNALocus : Type
  sequenceSimilarity : Prop
  syntenyPreservation : Prop
  functionalConstraint : Prop

structure EvolutionaryConservationEvidence (E : EvolutionaryConservationPackage) where
  sequenceSimilarityClosed : E.sequenceSimilarity
  syntenyPreservationClosed : E.syntenyPreservation
  functionalConstraintClosed : E.functionalConstraint

def EvolutionaryConservationClosed (E : EvolutionaryConservationPackage) : Prop :=
  E.sequenceSimilarity ∧ E.syntenyPreservation ∧ E.functionalConstraint

theorem evolutionary_conservation_closed_from_evidence (E : EvolutionaryConservationPackage)
    (Ev : EvolutionaryConservationEvidence E) : EvolutionaryConservationClosed E := by
  exact And.intro Ev.sequenceSimilarityClosed
    (And.intro Ev.syntenyPreservationClosed Ev.functionalConstraintClosed)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse