import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteConvolutionAlgebra where
  sequenceSpace : Type u
  convolutionProduct : sequenceSpace → sequenceSpace → sequenceSpace
  associativity : Prop
  commutativity : Prop
  identityElement : sequenceSpace
  identityProperty : Prop
  involution : sequenceSpace → sequenceSpace
  involutionProperty : Prop

structure DiscreteConvolutionEvidence (C : DiscreteConvolutionAlgebra) where
  associativityClosed : C.associativity
  commutativityClosed : C.commutativity
  identityPropertyClosed : C.identityProperty
  involutionPropertyClosed : C.involutionProperty

def DiscreteConvolutionClosed (C : DiscreteConvolutionAlgebra) : Prop :=
  C.associativity ∧ C.commutativity ∧ C.identityProperty ∧ C.involutionProperty

theorem discrete_convolution_closed_from_evidence (C : DiscreteConvolutionAlgebra)
    (E : DiscreteConvolutionEvidence C) : DiscreteConvolutionClosed C := by
  exact And.intro E.associativityClosed
    (And.intro E.commutativityClosed
      (And.intro E.identityPropertyClosed E.involutionPropertyClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse