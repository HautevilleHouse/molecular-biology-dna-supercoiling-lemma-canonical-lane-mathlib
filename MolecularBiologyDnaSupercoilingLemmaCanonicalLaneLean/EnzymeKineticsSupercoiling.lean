import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure TopoisomeraseIKinetics where
  bindingAffinity : ℝ
  cleavageRate : ℝ
  religationRate : ℝ
  steadyStateTurnover : bindingAffinity > 0 ∧ cleavageRate > 0 ∧ religationRate > 0

def TopoisomeraseIClosed (T : TopoisomeraseIKinetics) : Prop :=
  T.bindingAffinity > 0 ∧ T.cleavageRate > 0 ∧ T.religationRate > 0

structure GyraseKinetics where
  supercoilingRate : ℝ
  atpHydrolysis : ℝ
  processivity : ℕ
  coupledReaction : supercoilingRate = atpHydrolysis * (processivity : ℝ)

def GyraseClosed (G : GyraseKinetics) : Prop :=
  G.coupledReaction ∧ G.processivity ≥ 1

theorem enzyme_kinetics_consistent (T : TopoisomeraseIKinetics) (G : GyraseKinetics)
    (hT : TopoisomeraseIClosed T) (hG : GyraseClosed G) : Prop :=
  hT.1 ∧ hG.1

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse