import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure SupercoilingFreeEnergyPackage where
  freeEnergyDelta : Prop
  saltDependence : Prop
  sequenceDependence : Prop
  temperatureDependence : Prop

structure SupercoilingFreeEnergyEvidence (F : SupercoilingFreeEnergyPackage) where
  freeEnergyDeltaClosed : F.freeEnergyDelta
  saltDependenceClosed : F.saltDependence
  sequenceDependenceClosed : F.sequenceDependence
  temperatureDependenceClosed : F.temperatureDependence

def SupercoilingFreeEnergyClosed (F : SupercoilingFreeEnergyPackage) : Prop :=
  F.freeEnergyDelta ∧ F.saltDependence ∧ F.sequenceDependence ∧ F.temperatureDependence

theorem supercoiling_free_energy_closed_from_evidence
    (F : SupercoilingFreeEnergyPackage) (E : SupercoilingFreeEnergyEvidence F) :
    SupercoilingFreeEnergyClosed F := by
  exact And.intro E.freeEnergyDeltaClosed
    (And.intro E.saltDependenceClosed
      (And.intro E.sequenceDependenceClosed E.temperatureDependenceClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse
