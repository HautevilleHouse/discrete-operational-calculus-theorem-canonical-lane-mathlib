import DiscreteOperationalCalculusTheoremCanonicalLaneLean.DiscreteOperationalCalculusObjects

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure ConvolutionAlgebraPackage (O : DiscreteAdmittedObject) where
  algebraStructure : Type u
  multiplication : algebraStructure → algebraStructure → algebraStructure
  associativity : Prop
  identityElement : algebraStructure
  identityAction : Prop
  convolutionDefined : Prop
  shiftCommutation : Prop

structure ConvolutionAlgebraEvidence {O : DiscreteAdmittedObject} (A : ConvolutionAlgebraPackage O) where
  associativityClosed : A.associativity
  identityActionClosed : A.identityAction
  convolutionDefinedClosed : A.convolutionDefined
  shiftCommutationClosed : A.shiftCommutation

def ConvolutionAlgebraClosed {O : DiscreteAdmittedObject} (A : ConvolutionAlgebraPackage O) : Prop :=
  A.associativity ∧ A.identityAction ∧ A.convolutionDefined ∧ A.shiftCommutation

theorem convolution_algebra_closed_from_evidence {O : DiscreteAdmittedObject} 
    (A : ConvolutionAlgebraPackage O) (E : ConvolutionAlgebraEvidence A) :
    ConvolutionAlgebraClosed A := by
  exact And.intro E.associativityClosed (And.intro E.identityActionClosed
    (And.intro E.convolutionDefinedClosed E.shiftCommutationClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse