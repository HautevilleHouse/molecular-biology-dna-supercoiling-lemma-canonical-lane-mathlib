import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemma

structure ChromosomeOrganizationPackage where
  supercoilingDomains : Nat
  domainBoundaries : Nat
  organizationLaw : supercoilingDomains = domainBoundaries + 1

def ChromosomeOrganizationClosed (C : ChromosomeOrganizationPackage) : Prop :=
  C.organizationLaw

theorem chromosome_organization_closed (C : ChromosomeOrganizationPackage) : ChromosomeOrganizationClosed C := by
  exact C.organizationLaw

end MolecularBiologyDnaSupercoilingLemma
end HautevilleHouse