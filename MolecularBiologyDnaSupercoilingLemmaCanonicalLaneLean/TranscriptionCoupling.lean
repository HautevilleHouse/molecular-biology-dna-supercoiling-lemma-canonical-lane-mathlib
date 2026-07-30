import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure TranscriptionCouplingPackage where
  rnapProcessivity : Prop
  supercoilGeneration : Prop
  torsionalStress : Prop
  promoterAccessibility : Prop

structure TranscriptionCouplingEvidence (T : TranscriptionCouplingPackage) where
  rnapProcessivityClosed : T.rnapProcessivity
  supercoilGenerationClosed : T.supercoilGeneration
  torsionalStressClosed : T.torsionalStress
  promoterAccessibilityClosed : T.promoterAccessibility

def TranscriptionCouplingClosed (T : TranscriptionCouplingPackage) : Prop :=
  T.rnapProcessivity ∧ T.supercoilGeneration ∧ T.torsionalStress ∧ T.promoterAccessibility

theorem transcription_coupling_closed_from_evidence (T : TranscriptionCouplingPackage) (E : TranscriptionCouplingEvidence T) :
    TranscriptionCouplingClosed T := by
  exact And.intro E.rnapProcessivityClosed
    (And.intro E.supercoilGenerationClosed
      (And.intro E.torsionalStressClosed E.promoterAccessibilityClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse