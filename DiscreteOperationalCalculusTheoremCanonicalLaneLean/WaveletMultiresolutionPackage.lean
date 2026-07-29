import canonicalLaneMathlib.AdmissibleClass

/-!
# Wavelet Multiresolution Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure WaveletMultiresolutionPackage where
  scalingFunctionSpace : Type u
  waveletFunctionSpace : Type v
  dilationOperator : scalingFunctionSpace → scalingFunctionSpace
  translationOperator : waveletFunctionSpace → waveletFunctionSpace
  multiresolutionStructure : Prop
  dilationLinear : Prop
  translationLinear : Prop
  orthogonalityCondition : Prop

structure WaveletMultiresolutionEvidence (W : WaveletMultiresolutionPackage) where
  multiresolutionStructureClosed : W.multiresolutionStructure
  dilationLinearClosed : W.dilationLinear
  translationLinearClosed : W.translationLinear
  orthogonalityConditionClosed : W.orthogonalityCondition

def WaveletMultiresolutionClosed (W : WaveletMultiresolutionPackage) : Prop :=
  W.multiresolutionStructure ∧ W.dilationLinear ∧ W.translationLinear ∧ W.orthogonalityCondition

theorem wavelet_multiresolution_closed_from_evidence
    (W : WaveletMultiresolutionPackage) (E : WaveletMultiresolutionEvidence W) :
    WaveletMultiresolutionClosed W := by
  exact And.intro E.multiresolutionStructureClosed
    (And.intro E.dilationLinearClosed
      (And.intro E.translationLinearClosed E.orthogonalityConditionClosed))

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean