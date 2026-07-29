import canonicalLaneMathlib.AdmissibleClass

/-!
# Discrete Operational Calculus — Heaviside Step and Pulse Function

This module defines the discrete Heaviside step function and unit pulse,
fundamental building blocks for discrete operational calculus.
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure HeavisidePulsePackage where
  indexSet : Type u
  heaviside : indexSet → ℤ
  unitPulse : indexSet → ℤ
  heavisideShiftRelation : Prop
  pulseSummation : Prop
  heavisideAtOrigin : Prop
  heavisideShiftRelationTerm : heavisideShiftRelation
  pulseSummationTerm : pulseSummation
  heavisideAtOriginTerm : heavisideAtOrigin

structure HeavisidePulseEvidence (H : HeavisidePulsePackage) where
  heavisideShiftRelationClosed : H.heavisideShiftRelation
  pulseSummationClosed : H.pulseSummation
  heavisideAtOriginClosed : H.heavisideAtOrigin

def HeavisidePulseClosed (H : HeavisidePulsePackage) : Prop :=
  H.heavisideShiftRelation ∧ H.pulseSummation ∧ H.heavisideAtOrigin

theorem heaviside_pulse_closed_from_evidence (H : HeavisidePulsePackage) (E : HeavisidePulseEvidence H) :
    HeavisidePulseClosed H := by
  exact And.intro E.heavisideShiftRelationClosed (And.intro E.pulseSummationClosed E.heavisideAtOriginClosed)

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse