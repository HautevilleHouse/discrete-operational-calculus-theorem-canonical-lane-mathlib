import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteConvolution where
  sequence1 : Nat -> ℂ
  sequence2 : Nat -> ℂ
  convolutionResult : Nat -> ℂ

def discreteConvolution (x y : Nat -> ℂ) (n : Nat) : ℂ :=
  ∑_{k=0}^n x k * y (n - k)

structure DiscreteConvolutionPackage where
  convolutionDefined : Prop
  commutativeProperty : Prop
  associativeProperty : Prop
  distributiveProperty : Prop
  identityElement : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean