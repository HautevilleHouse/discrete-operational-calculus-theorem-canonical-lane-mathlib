import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteTimeEvolutionOperator where
  stateSpace : Type u
  timeStep : ℝ
  evolutionOperator : stateSpace → stateSpace
  semigroupProperty : Prop
  stabilityCondition : Prop
  convergenceToContinuous : Prop

structure DiscreteTimeEvolutionEvidence (T : DiscreteTimeEvolutionOperator) where
  semigroupPropertyClosed : T.semigroupProperty
  stabilityConditionClosed : T.stabilityCondition
  convergenceToContinuousClosed : T.convergenceToContinuous

def DiscreteTimeEvolutionClosed (T : DiscreteTimeEvolutionOperator) : Prop :=
  T.semigroupProperty ∧ T.stabilityCondition ∧ T.convergenceToContinuous

theorem discrete_time_evolution_closed_from_evidence (T : DiscreteTimeEvolutionOperator)
    (E : DiscreteTimeEvolutionEvidence T) : DiscreteTimeEvolutionClosed T := by
  exact And.intro E.semigroupPropertyClosed
    (And.intro E.stabilityConditionClosed E.convergenceToContinuousClosed)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse