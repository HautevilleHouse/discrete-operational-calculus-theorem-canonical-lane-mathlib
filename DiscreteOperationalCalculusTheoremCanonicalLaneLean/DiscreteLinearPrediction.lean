import canonicalLaneMathlib.AdmissibleClass

/-!
# Discrete Linear Prediction Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteLinearPredictionPackage where
  predictorSpace : Type u
  updateOperator : predictorSpace → predictorSpace
  innovationSequence : predictorSpace → predictorSpace
  predictorStable : Prop
  updateLinear : Prop
  innovationLinear : Prop

structure DiscreteLinearPredictionEvidence (L : DiscreteLinearPredictionPackage) where
  predictorStableClosed : L.predictorStable
  updateLinearClosed : L.updateLinear
  innovationLinearClosed : L.innovationLinear

def DiscreteLinearPredictionClosed (L : DiscreteLinearPredictionPackage) : Prop :=
  L.predictorStable ∧ L.updateLinear ∧ L.innovationLinear

theorem discrete_linear_prediction_closed_from_evidence
    (L : DiscreteLinearPredictionPackage) (E : DiscreteLinearPredictionEvidence L) :
    DiscreteLinearPredictionClosed L := by
  exact And.intro E.predictorStableClosed
    (And.intro E.updateLinearClosed E.innovationLinearClosed)

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean