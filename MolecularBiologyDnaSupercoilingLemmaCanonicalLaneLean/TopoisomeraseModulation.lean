import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemma

structure DnaTopologyPackage where
  linkingNumber : Int
  twist : Float
  writhe : Float
  linkingNumberConservation : linkingNumber = twist + writhe

def DnaTopologyClosed (D : DnaTopologyPackage) : Prop :=
  D.linkingNumberConservation

theorem dna_topology_closed (D : DnaTopologyPackage) : DnaTopologyClosed D := by
  exact D.linkingNumberConservation

end MolecularBiologyDnaSupercoilingLemma
end HautevilleHouse