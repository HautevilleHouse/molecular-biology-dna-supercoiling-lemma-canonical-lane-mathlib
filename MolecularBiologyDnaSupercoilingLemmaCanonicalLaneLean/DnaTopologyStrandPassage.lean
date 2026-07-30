import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure DnaTopologyStrandPassagePackage where
  linkingNumberDifference : Prop
  writheChange : Prop
  twistChange : Prop
  strandPassageEnzymatic : Prop
  supercoilingFreeEnergy : Prop

structure DnaTopologyStrandPassageEvidence (D : DnaTopologyStrandPassagePackage) where
  linkingNumberDifferenceClosed : D.linkingNumberDifference
  writheChangeClosed : D.writheChange
  twistChangeClosed : D.twistChange
  strandPassageEnzymaticClosed : D.strandPassageEnzymatic
  supercoilingFreeEnergyClosed : D.supercoilingFreeEnergy

def DnaTopologyStrandPassageClosed (D : DnaTopologyStrandPassagePackage) : Prop :=
  D.linkingNumberDifference ∧ D.writheChange ∧ D.twistChange ∧ D.strandPassageEnzymatic ∧ D.supercoilingFreeEnergy

theorem dna_topology_strand_passage_closed_from_evidence (D : DnaTopologyStrandPassagePackage) (E : DnaTopologyStrandPassageEvidence D) : DnaTopologyStrandPassageClosed D := by
  exact And.intro E.linkingNumberDifferenceClosed
    (And.intro E.writheChangeClosed
      (And.intro E.twistChangeClosed
        (And.intro E.strandPassageEnzymaticClosed E.supercoilingFreeEnergyClosed)))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse