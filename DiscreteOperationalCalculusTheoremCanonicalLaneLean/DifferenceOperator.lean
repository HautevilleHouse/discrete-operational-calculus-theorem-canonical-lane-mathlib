import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DifferenceOperatorPackage where
  forwardDifference : (ℕ → ℝ) → (ℕ → ℝ)
  backwardDifference : (ℕ → ℝ) → (ℕ → ℝ)
  shiftOperator : (ℕ → ℝ) → (ℕ → ℝ)
  identityOperator : (ℕ → ℝ) → (ℕ → ℝ)
  forwardDefined : ∀ (f : ℕ → ℝ) (n : ℕ), forwardDifference f n = f (n+1) - f n
  backwardDefined : ∀ (f : ℕ → ℝ) (n : ℕ), n ≥ 1 → backwardDifference f n = f n - f (n-1)
  shiftDefined : ∀ (f : ℕ → ℝ) (n : ℕ), shiftOperator f n = f (n+1)
  identityDefined : ∀ (f : ℕ → ℝ) (n : ℕ), identityOperator f n = f n

def DifferenceOperatorClosed (D : DifferenceOperatorPackage) : Prop :=
  D.forwardDefined ∧ D.backwardDefined ∧ D.shiftDefined ∧ D.identityDefined

theorem difference_operator_closed (D : DifferenceOperatorPackage) : DifferenceOperatorClosed D := by
  exact And.intro D.forwardDefined (And.intro D.backwardDefined (And.intro D.shiftDefined D.identityDefined))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse
