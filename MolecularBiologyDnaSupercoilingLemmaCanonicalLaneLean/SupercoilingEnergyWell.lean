import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.MeasureTheory.Integral.Bochner

/-!
# Supercoiling Energy Well Package
-/

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure SupercoilingEnergyWellPackage where
  linkingNumberDef : Prop
  writheComputation : Prop
  twistBalance : Prop
  energyMinimization : Prop

structure SupercoilingEnergyWellEvidence (E : SupercoilingEnergyWellPackage) where
  linkingNumberDefClosed : E.linkingNumberDef
  writheComputationClosed : E.writheComputation
  twistBalanceClosed : E.twistBalance
  energyMinimizationClosed : E.energyMinimization

def SupercoilingEnergyWellClosed (E : SupercoilingEnergyWellPackage) : Prop :=
  E.linkingNumberDef ∧ E.writheComputation ∧ E.twistBalance ∧ E.energyMinimization

theorem supercoiling_energy_well_closed_from_evidence
    (E : SupercoilingEnergyWellPackage) (Ev : SupercoilingEnergyWellEvidence E) :
    SupercoilingEnergyWellClosed E := by
  exact And.intro Ev.linkingNumberDefClosed
    (And.intro Ev.writheComputationClosed
      (And.intro Ev.twistBalanceClosed Ev.energyMinimizationClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse