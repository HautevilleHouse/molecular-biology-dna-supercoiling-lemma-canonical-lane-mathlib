import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.BridgeLemmas
import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

def ConstrainedDnaSupercoilingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dna_supercoiling_endgame (A : AdmissibleClass) : ConstrainedDnaSupercoilingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse