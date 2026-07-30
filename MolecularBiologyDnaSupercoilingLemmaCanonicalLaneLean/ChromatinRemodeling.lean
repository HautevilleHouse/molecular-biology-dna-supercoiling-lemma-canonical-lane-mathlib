import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure ChromatinRemodelingPackage where
  nucleosomeDisplacement : Prop
  histoneModifications : Prop
  supercoilAbsorption : Prop
  loopFormation : Prop

structure ChromatinRemodelingEvidence (C : ChromatinRemodelingPackage) where
  nucleosomeDisplacementClosed : C.nucleosomeDisplacement
  histoneModificationsClosed : C.histoneModifications
  supercoilAbsorptionClosed : C.supercoilAbsorption
  loopFormationClosed : C.loopFormation

def ChromatinRemodelingClosed (C : ChromatinRemodelingPackage) : Prop :=
  C.nucleosomeDisplacement ∧ C.histoneModifications ∧ C.supercoilAbsorption ∧ C.loopFormation

theorem chromatin_remodeling_closed_from_evidence (C : ChromatinRemodelingPackage) (E : ChromatinRemodelingEvidence C) :
    ChromatinRemodelingClosed C := by
  exact And.intro E.nucleosomeDisplacementClosed
    (And.intro E.histoneModificationsClosed
      (And.intro E.supercoilAbsorptionClosed E.loopFormationClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse