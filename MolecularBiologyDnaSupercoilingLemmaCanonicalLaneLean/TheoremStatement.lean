import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure DnaSupercoilingAdmittedObject where
  dnaMolecule : Type
  topology : TopologicalSpace dnaMolecule
  closedCircular : Prop
  linkingNumberDeficit : Prop
  writheComputed : Prop
  conclusion : linkingNumberDeficit ∧ writheComputed

def DnaSupercoilingWitnessClosed (O : DnaSupercoilingAdmittedObject) : Prop :=
  O.linkingNumberDeficit ∧ O.writheComputed

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse
