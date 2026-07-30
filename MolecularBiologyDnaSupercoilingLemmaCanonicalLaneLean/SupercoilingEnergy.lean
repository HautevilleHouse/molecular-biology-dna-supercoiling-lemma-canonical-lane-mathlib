import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemma

structure SupercoilingEnergyPackage where
  twistEnergy : Float
  writheEnergy : Float
  totalEnergy : Float
  energyDecomposition : totalEnergy = twistEnergy + writheEnergy

def SupercoilingEnergyClosed (E : SupercoilingEnergyPackage) : Prop :=
  E.energyDecomposition

theorem supercoiling_energy_closed (E : SupercoilingEnergyPackage) : SupercoilingEnergyClosed E := by
  exact E.energyDecomposition

end MolecularBiologyDnaSupercoilingLemma
end HautevilleHouse