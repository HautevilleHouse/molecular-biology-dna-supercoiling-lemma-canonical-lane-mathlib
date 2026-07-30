import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DnaSupercoilingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaSupercoilingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaSupercoilingLemmaCanonicalLaneLean
end HautevilleHouse
