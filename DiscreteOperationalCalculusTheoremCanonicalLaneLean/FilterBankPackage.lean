import canonicalLaneMathlib.AdmissibleClass

/-!
# Filter Bank Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure FilterBankPackage where
  analysisFilters : Type u
  synthesisFilters : Type v
  downsampling : analysisFilters → analysisFilters
  upsampling : synthesisFilters → synthesisFilters
  perfectReconstruction : Prop
  downsamplingLinear : Prop
  upsamplingLinear : Prop

structure FilterBankEvidence (F : FilterBankPackage) where
  perfectReconstructionClosed : F.perfectReconstruction
  downsamplingLinearClosed : F.downsamplingLinear
  upsamplingLinearClosed : F.upsamplingLinear

def FilterBankClosed (F : FilterBankPackage) : Prop :=
  F.perfectReconstruction ∧ F.downsamplingLinear ∧ F.upsamplingLinear

theorem filter_bank_closed_from_evidence
    (F : FilterBankPackage) (E : FilterBankEvidence F) :
    FilterBankClosed F := by
  exact And.intro E.perfectReconstructionClosed
    (And.intro E.downsamplingLinearClosed E.upsamplingLinearClosed)

end HautevilleHouse
end DiscreteOperationalCalculusTheoremCanonicalLaneLean