import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure ChiralityConstraintPackage where
  pleckstrinHomologyDomain : Prop
  writheSignCorrelation : Prop
  chiralResolution : Prop

structure ChiralityConstraintEvidence (C : ChiralityConstraintPackage) where
  pleckstrinHomologyDomainClosed : C.pleckstrinHomologyDomain
  writheSignCorrelationClosed : C.writheSignCorrelation
  chiralResolutionClosed : C.chiralResolution

def ChiralityConstraintClosed (C : ChiralityConstraintPackage) : Prop :=
  C.pleckstrinHomologyDomain ∧ C.writheSignCorrelation ∧ C.chiralResolution

theorem chirality_constraint_closed_from_evidence
    (C : ChiralityConstraintPackage) (E : ChiralityConstraintEvidence C) :
    ChiralityConstraintClosed C := by
  exact And.intro E.pleckstrinHomologyDomainClosed
    (And.intro E.writheSignCorrelationClosed E.chiralResolutionClosed)

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse
