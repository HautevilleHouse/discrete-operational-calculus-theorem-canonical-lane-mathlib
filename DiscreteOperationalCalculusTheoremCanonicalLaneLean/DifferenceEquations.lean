import DiscreteOperationalCalculusTheoremCanonicalLaneLean.ZTransformRepresentation

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DifferenceEquationPackage {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} (Z : ZTransformPackage S) where
  linearEquationForm : Type u
  homogeneousSolution : Prop
  particularSolution : Prop
  initialConditionFit : Prop
  stabilityViaZTransform : Prop

structure DifferenceEquationEvidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} {Z : ZTransformPackage S} (D : DifferenceEquationPackage Z) where
  homogeneousSolutionClosed : D.homogeneousSolution
  particularSolutionClosed : D.particularSolution
  initialConditionFitClosed : D.initialConditionFit
  stabilityViaZTransformClosed : D.stabilityViaZTransform

def DifferenceEquationClosed {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} {Z : ZTransformPackage S} (D : DifferenceEquationPackage Z) : Prop :=
  D.homogeneousSolution ∧ D.particularSolution ∧ D.initialConditionFit ∧ D.stabilityViaZTransform

theorem difference_equation_closed_from_evidence {O : DiscreteAdmittedObject} {A : ConvolutionAlgebraPackage O}
    {S : ShiftOperatorStructure A} {Z : ZTransformPackage S} (D : DifferenceEquationPackage Z)
    (E : DifferenceEquationEvidence D) : DifferenceEquationClosed D := by
  exact And.intro E.homogeneousSolutionClosed (And.intro E.particularSolutionClosed
    (And.intro E.initialConditionFitClosed E.stabilityViaZTransformClosed))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse