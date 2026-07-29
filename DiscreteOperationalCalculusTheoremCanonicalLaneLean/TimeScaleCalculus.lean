import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure TimeScale where
  T : Type u
  delta : Nat -> T
  forwardJump : T -> T
  backwardJump : T -> T
  rdContinuous : Prop

def deltaDerivative (f : T -> ℝ) (t : T) : ℝ :=
  (f (forwardJump t) - f t) / (delta t)

structure TimeScalePackage where
  timeScale : TimeScale
  deltaDerivativeDefined : Prop
  deltaDerivativeLinear : Prop
  deltaDerivativeProductRule : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean