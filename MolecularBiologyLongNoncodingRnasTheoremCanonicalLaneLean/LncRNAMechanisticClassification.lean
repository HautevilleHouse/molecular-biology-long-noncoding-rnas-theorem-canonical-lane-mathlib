import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean

structure MechanisticClassificationPackage where
  mechanismType : Type
  lncRNASpecies : Type
  signalingScaffold : Prop
  transcriptionalRegulator : Prop
  postTranscriptionalRegulator : Prop
  chromatinArchitect : Prop
  typeAssignmentWitness : signalingScaffold ∨ transcriptionalRegulator ∨
    postTranscriptionalRegulator ∨ chromatinArchitect

structure MechanisticClassificationEvidence (M : MechanisticClassificationPackage) where
  signalingScaffoldClosed : M.signalingScaffold
  transcriptionalRegulatorClosed : M.transcriptionalRegulator
  postTranscriptionalRegulatorClosed : M.postTranscriptionalRegulator
  chromatinArchitectClosed : M.chromatinArchitect

def MechanisticClassificationClosed (M : MechanisticClassificationPackage) : Prop :=
  M.signalingScaffold ∧ M.transcriptionalRegulator ∧
  M.postTranscriptionalRegulator ∧ M.chromatinArchitect

theorem mechanistic_classification_closed_from_evidence (M : MechanisticClassificationPackage)
    (Ev : MechanisticClassificationEvidence M) : MechanisticClassificationClosed M := by
  exact And.intro Ev.signalingScaffoldClosed
    (And.intro Ev.transcriptionalRegulatorClosed
      (And.intro Ev.postTranscriptionalRegulatorClosed Ev.chromatinArchitectClosed))

end MolecularBiologyLongNoncodingRnasTheoremCanonicalLaneLean
end HautevilleHouse