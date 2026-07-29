import DiscreteOperationalCalculusTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DiscreteOperationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteOperationalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse