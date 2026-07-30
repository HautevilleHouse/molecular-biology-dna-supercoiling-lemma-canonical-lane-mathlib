import MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SupercoilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SupercoilingAdmittedObject where
  space : SupercoilingSpace
  closedDoubleStranded : Prop
  supercoiledUnderwound : Prop
  relaxationModel : Type
  relaxationTopology : TopologicalSpace relaxationModel
  topoisomeraseEfficient : Prop
  conclusion : topoisomeraseEfficient

structure SupercoilingEndgameState where
  object : SupercoilingAdmittedObject

def SupercoilingWitnessClosed (O : SupercoilingAdmittedObject) : Prop :=
  O.topoisomeraseEfficient

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse