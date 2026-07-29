import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteLaplaceTransform where
  functionSequence : Nat -> ℝ
  transformSequence : ℂ -> ℂ
  regionOfConvergence : Set ℂ

def LaplaceTransform (f : Nat -> ℝ) (z : ℂ) : ℂ :=
  ∑' (k=0)∞, f k * (z ^ (-k-1))

structure DiscreteLaplacePackage where
  transform : DiscreteLaplaceTransform
  convergenceResult : Prop
  inversionFormula : Prop
  convolutionTheorem : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean