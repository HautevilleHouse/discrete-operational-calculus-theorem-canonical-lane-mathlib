import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure ForwardBackwardOperatorSpace where
  carrier : Type u
  forward : carrier → carrier
  backward : carrier → carrier
  forwardBackwardComposition : carrier → carrier
  backwardForwardComposition : carrier → carrier
  forwardInjective : Prop
  backwardInjective : Prop
  forwardBackwardIdempotent : Prop
  backwardForwardIdempotent : Prop

structure ForwardBackwardEvidence (O : ForwardBackwardOperatorSpace) where
  forwardInjectiveClosed : O.forwardInjective
  backwardInjectiveClosed : O.backwardInjective
  forwardBackwardIdempotentClosed : O.forwardBackwardIdempotent
  backwardForwardIdempotentClosed : O.backwardForwardIdempotent

def ForwardBackwardClosed (O : ForwardBackwardOperatorSpace) : Prop :=
  O.forwardInjective ∧ O.backwardInjective ∧
  O.forwardBackwardIdempotent ∧ O.backwardForwardIdempotent

theorem forward_backward_closed_from_evidence (O : ForwardBackwardOperatorSpace)
    (E : ForwardBackwardEvidence O) : ForwardBackwardClosed O := by
  exact And.intro E.forwardInjectiveClosed
    (And.intro E.backwardInjectiveClosed
      (And.intro E.forwardBackwardIdempotentClosed E.backwardForwardIdempotentClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse