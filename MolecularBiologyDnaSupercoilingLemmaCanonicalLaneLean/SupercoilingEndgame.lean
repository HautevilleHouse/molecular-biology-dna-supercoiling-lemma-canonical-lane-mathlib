import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.DnaSupercoilingModels
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.LinkageEquilibrium
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.TopoisomeraseKinetics
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.TranscriptionCoupling
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.ChromatinRemodeling

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DnaSupercoilingModelClosed (admittedClosureField A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedSupercoilingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_supercoiling_endgame (A : AdmissibleClass) :
    ConstrainedSupercoilingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse