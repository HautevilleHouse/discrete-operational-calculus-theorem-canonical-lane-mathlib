import DiscreteOperationalCalculusTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

def DiscreteOperationalCalculusClosure (A : DiscreteAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_operational_calculus_endgame (A : DiscreteAdmittedObject) :
    DiscreteOperationalCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse