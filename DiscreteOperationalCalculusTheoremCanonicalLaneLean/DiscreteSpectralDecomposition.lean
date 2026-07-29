import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteSpectralData where
  eigenvalueSequence : List ℝ
  eigenfunctionBasis : Type u
  expansionFormula : Prop
  parsevalIdentity : Prop
  truncationErrorBound : Prop

structure DiscreteSpectralEvidence (D : DiscreteSpectralData) where
  expansionFormulaClosed : D.expansionFormula
  parsevalIdentityClosed : D.parsevalIdentity
  truncationErrorBoundClosed : D.truncationErrorBound

def DiscreteSpectralClosed (D : DiscreteSpectralData) : Prop :=
  D.expansionFormula ∧ D.parsevalIdentity ∧ D.truncationErrorBound

theorem discrete_spectral_closed_from_evidence (D : DiscreteSpectralData)
    (E : DiscreteSpectralEvidence D) : DiscreteSpectralClosed D := by
  exact And.intro E.expansionFormulaClosed
    (And.intro E.parsevalIdentityClosed E.truncationErrorBoundClosed)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse