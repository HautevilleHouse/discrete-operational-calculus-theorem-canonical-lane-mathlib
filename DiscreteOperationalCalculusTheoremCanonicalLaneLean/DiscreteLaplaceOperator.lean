import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteLaplacePackage where
  gridType : Type u
  laplaceOperator : gridType → gridType
  kernelDimension : Nat
  selfAdjoint : Prop
  negativeSemidefinite : Prop
  kernelKnown : Prop
  spectralGap : Prop
  consistencyWithContinuousLaplace : Prop

structure DiscreteLaplaceEvidence (L : DiscreteLaplacePackage) where
  selfAdjointClosed : L.selfAdjoint
  negativeSemidefiniteClosed : L.negativeSemidefinite
  kernelKnownClosed : L.kernelKnown
  spectralGapClosed : L.spectralGap
  consistencyWithContinuousLaplaceClosed : L.consistencyWithContinuousLaplace

def DiscreteLaplaceClosed (L : DiscreteLaplacePackage) : Prop :=
  L.selfAdjoint ∧ L.negativeSemidefinite ∧ L.kernelKnown ∧
  L.spectralGap ∧ L.consistencyWithContinuousLaplace

theorem discrete_laplace_closed_from_evidence (L : DiscreteLaplacePackage)
    (E : DiscreteLaplaceEvidence L) : DiscreteLaplaceClosed L := by
  exact And.intro E.selfAdjointClosed
    (And.intro E.negativeSemidefiniteClosed
      (And.intro E.kernelKnownClosed
        (And.intro E.spectralGapClosed E.consistencyWithContinuousLaplaceClosed)))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse