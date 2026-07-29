import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusTheoremCanonicalLaneLean.DifferenceOperator

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure SummationByPartsPackage (D : DifferenceOperatorPackage) where
  productRule : Prop
  summationFormula : Prop
  discreteIntegrationByParts : Prop
  productRuleProof : productRule
  summationFormulaProof : summationFormula
  discreteIntegrationByPartsProof : discreteIntegrationByParts

def SummationByPartsClosed {D : DifferenceOperatorPackage} (S : SummationByPartsPackage D) : Prop :=
  S.productRule ∧ S.summationFormula ∧ S.discreteIntegrationByParts

theorem summation_by_parts_closed {D : DifferenceOperatorPackage} (S : SummationByPartsPackage D) : SummationByPartsClosed S := by
  exact And.intro S.productRuleProof (And.intro S.summationFormulaProof S.discreteIntegrationByPartsProof)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse
