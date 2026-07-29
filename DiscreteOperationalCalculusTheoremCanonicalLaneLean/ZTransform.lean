import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure ZTransform where
  sequence : Nat -> ℂ
  transform : ℂ -> ℂ
  regionOfConvergence : Set ℂ

def zTransform (x : Nat -> ℂ) (z : ℂ) : ℂ :=
  ∑_{n=0}∞ x n * z^{-n}

structure ZTransformPackage where
  zTransform : ZTransform
  linearityProperty : Prop
  shiftingProperty : Prop
  convolutionProperty : Prop
  inverseTransform : Prop

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean