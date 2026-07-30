import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure SupercoilingFreeEnergyThermodynamicsPackage where
  supercoilingDensity : Prop
  freeEnergyPerUnitLength : Prop
  saltConcentrationDependence : Prop
  temperatureDependence : Prop
  elasticRodModel : Prop
  experimentalValidation : Prop

structure SupercoilingFreeEnergyThermodynamicsEvidence (S : SupercoilingFreeEnergyThermodynamicsPackage) where
  supercoilingDensityClosed : S.supercoilingDensity
  freeEnergyPerUnitLengthClosed : S.freeEnergyPerUnitLength
  saltConcentrationDependenceClosed : S.saltConcentrationDependence
  temperatureDependenceClosed : S.temperatureDependence
  elasticRodModelClosed : S.elasticRodModel
  experimentalValidationClosed : S.experimentalValidation

def SupercoilingFreeEnergyThermodynamicsClosed (S : SupercoilingFreeEnergyThermodynamicsPackage) : Prop :=
  S.supercoilingDensity ∧ S.freeEnergyPerUnitLength ∧ S.saltConcentrationDependence ∧ S.temperatureDependence ∧ S.elasticRodModel ∧ S.experimentalValidation

theorem supercoiling_free_energy_thermodynamics_closed_from_evidence (S : SupercoilingFreeEnergyThermodynamicsPackage) (E : SupercoilingFreeEnergyThermodynamicsEvidence S) : SupercoilingFreeEnergyThermodynamicsClosed S := by
  exact And.intro E.supercoilingDensityClosed
    (And.intro E.freeEnergyPerUnitLengthClosed
      (And.intro E.saltConcentrationDependenceClosed
        (And.intro E.temperatureDependenceClosed
          (And.intro E.elasticRodModelClosed E.experimentalValidationClosed))))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse