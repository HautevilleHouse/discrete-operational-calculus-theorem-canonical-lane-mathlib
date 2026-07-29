import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteTimeSystem where
  input : Nat -> ℝ
  output : Nat -> ℝ
  state : Nat -> ℝ
  transferFunction : ℂ -> ℂ
  differenceEquation : (Nat -> ℝ) -> (Nat -> ℝ) -> Prop

def discreteTransferFunction (h : Nat -> ℝ) (z : ℂ) : ℂ :=
  ∑_{n=0}∞ h n * z^{-n}

structure DiscreteTimeSystemPackage where
  system : DiscreteTimeSystem
  stabilityCondition : Prop
  causalityCondition : Prop
  controllability : Prop
  observability : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean