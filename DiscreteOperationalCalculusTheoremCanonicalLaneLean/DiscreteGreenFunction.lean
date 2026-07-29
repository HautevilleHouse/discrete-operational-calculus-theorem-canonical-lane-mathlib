import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusTheoremCanonicalLaneLean.DifferenceOperator

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteGreenFunctionPackage (D : DifferenceOperatorPackage) where
  operator : (ℕ → ℝ) → (ℕ → ℝ)
  greenFunction : ℕ × ℕ → ℝ
  kernelRepresentation : Prop
  inversionFormula : Prop
  solvabilityCondition : Prop
  kernelRepresentationProof : kernelRepresentation
  inversionFormulaProof : inversionFormula
  solvabilityConditionProof : solvabilityCondition

def DiscreteGreenFunctionClosed {D : DifferenceOperatorPackage} (G : DiscreteGreenFunctionPackage D) : Prop :=
  G.kernelRepresentation ∧ G.inversionFormula ∧ G.solvabilityCondition

theorem discrete_green_function_closed {D : DifferenceOperatorPackage} (G : DiscreteGreenFunctionPackage D) : DiscreteGreenFunctionClosed G := by
  exact And.intro G.kernelRepresentationProof (And.intro G.inversionFormulaProof G.solvabilityConditionProof)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse
