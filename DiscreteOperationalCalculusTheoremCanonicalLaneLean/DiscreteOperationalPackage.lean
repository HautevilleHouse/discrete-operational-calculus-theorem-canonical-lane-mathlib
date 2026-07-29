import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteOperationalPackage where
  sequenceSpace : Type u
  shiftOperator : sequenceSpace → sequenceSpace
  forwardDifference : sequenceSpace → sequenceSpace
  backwardDifference : sequenceSpace → sequenceSpace
  productRuleSatisfied : Prop
  shiftLinear : Prop
  forwardDifferenceLinear : Prop
  backwardDifferenceLinear : Prop

structure DiscreteOperationalEvidence (P : DiscreteOperationalPackage) where
  productRuleSatisfiedClosed : P.productRuleSatisfied
  shiftLinearClosed : P.shiftLinear
  forwardDifferenceLinearClosed : P.forwardDifferenceLinear
  backwardDifferenceLinearClosed : P.backwardDifferenceLinear

def DiscreteOperationalClosed (P : DiscreteOperationalPackage) : Prop :=
  P.productRuleSatisfied ∧ P.shiftLinear ∧ P.forwardDifferenceLinear ∧ P.backwardDifferenceLinear

theorem discrete_operational_closed_from_evidence
    (P : DiscreteOperationalPackage) (E : DiscreteOperationalEvidence P) :
    DiscreteOperationalClosed P := by
  exact And.intro E.productRuleSatisfiedClosed
    (And.intro E.shiftLinearClosed
      (And.intro E.forwardDifferenceLinearClosed E.backwardDifferenceLinearClosed))

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean