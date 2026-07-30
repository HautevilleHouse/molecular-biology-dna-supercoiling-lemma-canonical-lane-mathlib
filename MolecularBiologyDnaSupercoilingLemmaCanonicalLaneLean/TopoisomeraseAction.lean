import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.SupercoilingEnergyWell

/-!
# Topoisomerase Action Package
-/

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure TopoisomeraseActionPackage {E : SupercoilingEnergyWellPackage} where
  enzymeBinding : Prop
  strandCleavage : Prop
  strandPassage : Prop
  religation : Prop
  supercoilingRelaxation : Prop

structure TopoisomeraseActionEvidence {E : SupercoilingEnergyWellPackage}
    (T : TopoisomeraseActionPackage E) where
  enzymeBindingClosed : T.enzymeBinding
  strandCleavageClosed : T.strandCleavage
  strandPassageClosed : T.strandPassage
  religationClosed : T.religation
  supercoilingRelaxationClosed : T.supercoilingRelaxation

def TopoisomeraseActionClosed {E : SupercoilingEnergyWellPackage}
    (T : TopoisomeraseActionPackage E) : Prop :=
  T.enzymeBinding ∧ T.strandCleavage ∧ T.strandPassage ∧ T.religation ∧ T.supercoilingRelaxation

theorem topoisomerase_action_closed_from_evidence
    {E : SupercoilingEnergyWellPackage} (T : TopoisomeraseActionPackage E)
    (Ev : TopoisomeraseActionEvidence T) : TopoisomeraseActionClosed T := by
  exact And.intro Ev.enzymeBindingClosed
    (And.intro Ev.strandCleavageClosed
      (And.intro Ev.strandPassageClosed
        (And.intro Ev.religationClosed Ev.supercoilingRelaxationClosed)))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse