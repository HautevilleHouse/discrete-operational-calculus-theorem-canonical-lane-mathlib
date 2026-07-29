import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

def DiscreteOperationalCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_operational_calculus_endgame (A : AdmissibleClass) :
    DiscreteOperationalCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean