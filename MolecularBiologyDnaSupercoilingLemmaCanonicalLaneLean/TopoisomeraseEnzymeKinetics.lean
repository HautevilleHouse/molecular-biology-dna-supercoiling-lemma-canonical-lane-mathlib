import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure TopoisomeraseEnzymeKineticsPackage where
  enzymeBinding : Prop
  strandCleavage : Prop
  strandPassage : Prop
  strandReligation : Prop
  atpHydrolysis : Prop
  processivity : Prop

structure TopoisomeraseEnzymeKineticsEvidence (T : TopoisomeraseEnzymeKineticsPackage) where
  enzymeBindingClosed : T.enzymeBinding
  strandCleavageClosed : T.strandCleavage
  strandPassageClosed : T.strandPassage
  strandReligationClosed : T.strandReligation
  atpHydrolysisClosed : T.atpHydrolysis
  processivityClosed : T.processivity

def TopoisomeraseEnzymeKineticsClosed (T : TopoisomeraseEnzymeKineticsPackage) : Prop :=
  T.enzymeBinding ∧ T.strandCleavage ∧ T.strandPassage ∧ T.strandReligation ∧ T.atpHydrolysis ∧ T.processivity

theorem topoisomerase_enzyme_kinetics_closed_from_evidence (T : TopoisomeraseEnzymeKineticsPackage) (E : TopoisomeraseEnzymeKineticsEvidence T) : TopoisomeraseEnzymeKineticsClosed T := by
  exact And.intro E.enzymeBindingClosed
    (And.intro E.strandCleavageClosed
      (And.intro E.strandPassageClosed
        (And.intro E.strandReligationClosed
          (And.intro E.atpHydrolysisClosed E.processivityClosed))))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse