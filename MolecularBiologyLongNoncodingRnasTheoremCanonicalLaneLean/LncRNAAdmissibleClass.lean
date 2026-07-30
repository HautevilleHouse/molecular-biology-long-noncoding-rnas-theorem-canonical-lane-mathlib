import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure LncRNAAdmittedObject where
  cellType : Type
  lncrnaTranscript : Type
  chromatinState : Prop
  expressionLevel : ℝ
  regulatoryEffect : Prop
  conclusion : regulatoryEffect

def LncRNAWitnessClosed (O : LncRNAAdmittedObject) : Prop :=
  O.regulatoryEffect

structure AdmissibleClass where
  object : LncRNAAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LncRNAWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse