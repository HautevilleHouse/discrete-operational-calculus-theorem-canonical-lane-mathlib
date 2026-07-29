import DiscreteOperationalCalculusTheoremCanonicalLaneLean.ShiftOperatorStructure

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure ZTransformPackage {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O} 
    (S : ShiftOperatorStructure A) where
  zTransform : A.algebraStructure → ℂ → ℂ
  inversionFormula : Prop
  convolutionTheorem : Prop
  partialFractionExpansion : Prop
  stabilityCriterion : Prop

structure ZTransformEvidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} (Z : ZTransformPackage S) where
  inversionFormulaClosed : Z.inversionFormula
  convolutionTheoremClosed : Z.convolutionTheorem
  partialFractionExpansionClosed : Z.partialFractionExpansion
  stabilityCriterionClosed : Z.stabilityCriterion

def ZTransformClosed {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} (Z : ZTransformPackage S) : Prop :=
  Z.inversionFormula ∧ Z.convolutionTheorem ∧ Z.partialFractionExpansion ∧ Z.stabilityCriterion

theorem z_transform_closed_from_evidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} (Z : ZTransformPackage S) (E : ZTransformEvidence Z) :
    ZTransformClosed Z := by
  exact And.intro E.inversionFormulaClosed (And.intro E.convolutionTheoremClosed
    (And.intro E.partialFractionExpansionClosed E.stabilityCriterionClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse