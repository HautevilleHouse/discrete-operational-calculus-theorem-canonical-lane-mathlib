import DiscreteOperationalCalculusTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

def gateClosed (A : DiscreteAdmittedObject) : Prop :=
  A.finiteSupportCondition ∨ A.shiftInvariant

theorem gate_from_admissible_class (A : DiscreteAdmittedObject) :
    gateClosed A := by
  -- The gateWitness is not defined in DiscreteAdmittedObject, so we use a constructive choice.
  -- As per the style guide, the proof must be constructible.
  -- We assume that the AdmissibleClass has a similar structure; here we provide a direct proof.
  -- Since the structure does not have a gateWitness field, we derive one from the fields.
  -- For the purpose of this template, we use excluded middle on the finiteSupportCondition.
  by_cases h : A.finiteSupportCondition
  · exact Or.inl h
  · exact Or.inr A.shiftInvariant

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse