import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure FiniteDifference where
  order : Nat
  stepSize : ℝ
  forwardDifference : (ℝ -> ℝ) -> ℝ -> ℝ
  backwardDifference : (ℝ -> ℝ) -> ℝ -> ℝ
  centralDifference : (ℝ -> ℝ) -> ℝ -> ℝ

def forwardDifference (h : ℝ) (f : ℝ -> ℝ) (x : ℝ) : ℝ :=
  (f (x + h) - f x) / h

def backwardDifference (h : ℝ) (f : ℝ -> ℝ) (x : ℝ) : ℝ :=
  (f x - f (x - h)) / h

def centralDifference (h : ℝ) (f : ℝ -> ℝ) (x : ℝ) : ℝ :=
  (f (x + h) - f (x - h)) / (2 * h)

structure FiniteDifferencePackage where
  forwardDefined : Prop
  backwardDefined : Prop
  centralDefined : Prop
  errorEstimates : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean