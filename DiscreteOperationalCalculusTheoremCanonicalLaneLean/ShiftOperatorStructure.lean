import DiscreteOperationalCalculusTheoremCanonicalLaneLean.ConvolutionAlgebra

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure ShiftOperatorStructure {O : DiscreteAdmittedObject} (A : ConvolutionAlgebraPackage O) where
  shiftMap : ℕ → A.algebraStructure → A.algebraStructure
  shiftAdditive : Prop
  shiftMultiplicative : Prop
  shiftOne : Prop
  shiftConvolutionCommute : Prop

structure ShiftOperatorEvidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O} 
    (S : ShiftOperatorStructure A) where
  shiftAdditiveClosed : S.shiftAdditive
  shiftMultiplicativeClosed : S.shiftMultiplicative
  shiftOneClosed : S.shiftOne
  shiftConvolutionCommuteClosed : S.shiftConvolutionCommute

def ShiftOperatorClosed {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O} 
    (S : ShiftOperatorStructure A) : Prop :=
  S.shiftAdditive ∧ S.shiftMultiplicative ∧ S.shiftOne ∧ S.shiftConvolutionCommute

theorem shift_operator_closed_from_evidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    (S : ShiftOperatorStructure A) (E : ShiftOperatorEvidence S) :
    ShiftOperatorClosed S := by
  exact And.intro E.shiftAdditiveClosed (And.intro E.shiftMultiplicativeClosed
    (And.intro E.shiftOneClosed E.shiftConvolutionCommuteClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse