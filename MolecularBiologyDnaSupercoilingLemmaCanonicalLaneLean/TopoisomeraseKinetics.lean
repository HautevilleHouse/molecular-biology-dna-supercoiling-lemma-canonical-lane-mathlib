import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure TopoisomeraseKineticsPackage where
  strandPassageRate : Prop
  supercoilRelaxation : Prop
  atpDependence : Prop
  decatenationActivity : Prop

structure TopoisomeraseKineticsEvidence (T : TopoisomeraseKineticsPackage) where
  strandPassageRateClosed : T.strandPassageRate
  supercoilRelaxationClosed : T.supercoilRelaxation
  atpDependenceClosed : T.atpDependence
  decatenationActivityClosed : T.decatenationActivity

def TopoisomeraseKineticsClosed (T : TopoisomeraseKineticsPackage) : Prop :=
  T.strandPassageRate ∧ T.supercoilRelaxation ∧ T.atpDependence ∧ T.decatenationActivity

theorem topoisomerase_kinetics_closed_from_evidence (T : TopoisomeraseKineticsPackage) (E : TopoisomeraseKineticsEvidence T) :
    TopoisomeraseKineticsClosed T := by
  exact And.intro E.strandPassageRateClosed
    (And.intro E.supercoilRelaxationClosed
      (And.intro E.atpDependenceClosed E.decatenationActivityClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse