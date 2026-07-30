import MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LncRNAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse