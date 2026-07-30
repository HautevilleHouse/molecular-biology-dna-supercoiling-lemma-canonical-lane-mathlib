import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure DnaSupercoilingModel where
  doubleStrandBreaks : Prop
  topoisomeraseActivity : Prop
  writheConstraint : Prop
  twistChange : Prop

structure DnaSupercoilingEvidence (M : DnaSupercoilingModel) where
  doubleStrandBreaksClosed : M.doubleStrandBreaks
  topoisomeraseActivityClosed : M.topoisomeraseActivity
  writheConstraintClosed : M.writheConstraint
  twistChangeClosed : M.twistChange

def DnaSupercoilingModelClosed (M : DnaSupercoilingModel) : Prop :=
  M.doubleStrandBreaks ∧ M.topoisomeraseActivity ∧ M.writheConstraint ∧ M.twistChange

theorem dna_supercoiling_closed_from_evidence (M : DnaSupercoilingModel) (E : DnaSupercoilingEvidence M) :
    DnaSupercoilingModelClosed M := by
  exact And.intro E.doubleStrandBreaksClosed
    (And.intro E.topoisomeraseActivityClosed
      (And.intro E.writheConstraintClosed E.twistChangeClosed))

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse