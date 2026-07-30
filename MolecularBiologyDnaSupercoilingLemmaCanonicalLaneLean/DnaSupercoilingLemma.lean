import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure DnaSupercoilingLemmaPackage where
  linkingNumberDefined : Prop
  twistDefined : Prop
  writheDefined : Prop
  supercoilingEquation : Prop
  topologicalConservation : linkingNumberDefined ∧ twistDefined ∧ writheDefined

def DnaSupercoilingLemmaClosed (P : DnaSupercoilingLemmaPackage) : Prop :=
  P.linkingNumberDefined ∧ P.twistDefined ∧ P.writheDefined ∧ P.supercoilingEquation

theorem dna_supercoiling_lemma_closed (P : DnaSupercoilingLemmaPackage)
    (h : P.topologicalConservation) (h_eq : P.supercoilingEquation) :
    DnaSupercoilingLemmaClosed P := by
  rcases h with ⟨hl, ht, hw⟩
  exact ⟨hl, ht, hw, h_eq⟩

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse