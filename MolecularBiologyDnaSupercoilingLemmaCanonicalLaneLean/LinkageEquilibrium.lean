import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure LinkageEquilibriumPackage where
  linkingNumberDefined : Prop
  topologicalDomains : Prop
  supercoilingDensity : Prop
  plectonemeFormation : Prop

structure LinkageEquilibriumEvidence (L : LinkageEquilibriumPackage) where
  linkingNumberDefinedClosed : L.linkingNumberDefined
  topologicalDomainsClosed : L.topologicalDomains
  supercoilingDensityClosed : L.supercoilingDensity
  plectonemeFormationClosed : L.plectonemeFormation

def LinkageEquilibriumClosed (L : LinkageEquilibriumPackage) : Prop :=
  L.linkingNumberDefined ∧ L.topologicalDomains ∧ L.supercoilingDensity ∧ L.plectonemeFormation

theorem linkage_equilibrium_closed_from_evidence (L : LinkageEquilibriumPackage) (E : LinkageEquilibriumEvidence L) :
    LinkageEquilibriumClosed L := by
  exact And.intro E.linkingNumberDefinedClosed
    (And.intro E.topologicalDomainsClosed
      (And.intro E.supercoilingDensityClosed E.plectonemeFormationClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse