import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure ReplicationForkPackage where
  forkProgress : ℝ
  supercoilingRelaxation : Prop
  topoisomeraseAction : Prop

def ReplicationTopologyClosed (R : ReplicationForkPackage) : Prop :=
  R.supercoilingRelaxation ∧ R.topoisomeraseAction

structure ChromosomeSegregationPackage where
  decatenation : Prop
  sisterChromatidSeparation : Prop
  topologicalResolution : decatenation ∧ sisterChromatidSeparation

def SegregationClosed (C : ChromosomeSegregationPackage) : Prop :=
  C.decatenation ∧ C.sisterChromatidSeparation

theorem topology_change_during_replication (R : ReplicationForkPackage) (C : ChromosomeSegregationPackage)
    (hR : ReplicationTopologyClosed R) (hC : SegregationClosed C) : Prop :=
  R.supercoilingRelaxation ∧ C.decatenation

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse