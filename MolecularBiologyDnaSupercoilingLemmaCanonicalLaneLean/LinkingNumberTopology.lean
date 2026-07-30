import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure LinkingNumberTopologyPackage where
  doubleHelix : Type
  twistWritheDecomposition : Prop
  linkingNumberConservation : Prop
  supercoilingDensity : Prop

structure LinkingNumberTopologyEvidence (L : LinkingNumberTopologyPackage) where
  twistWritheDecompositionClosed : L.twistWritheDecomposition
  linkingNumberConservationClosed : L.linkingNumberConservation
  supercoilingDensityClosed : L.supercoilingDensity

def LinkingNumberTopologyClosed (L : LinkingNumberTopologyPackage) : Prop :=
  L.twistWritheDecomposition ∧ L.linkingNumberConservation ∧ L.supercoilingDensity

theorem linking_number_topology_closed_from_evidence
    (L : LinkingNumberTopologyPackage) (E : LinkingNumberTopologyEvidence L) :
    LinkingNumberTopologyClosed L := by
  exact And.intro E.twistWritheDecompositionClosed
    (And.intro E.linkingNumberConservationClosed E.supercoilingDensityClosed)

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse
