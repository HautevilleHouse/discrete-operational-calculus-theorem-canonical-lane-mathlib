import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteZTransformPackage where
  sequenceType : Type u
  zTransformDomain : Type v
  transformPair : sequenceType → zTransformDomain
  inverseTransform : zTransformDomain → sequenceType
  linearity : Prop
  shiftProperty : Prop
  convolutionProperty : Prop
  initialValueTheorem : Prop
  finalValueTheorem : Prop

structure DiscreteZTransformEvidence (Z : DiscreteZTransformPackage) where
  linearityClosed : Z.linearity
  shiftPropertyClosed : Z.shiftProperty
  convolutionPropertyClosed : Z.convolutionProperty
  initialValueTheoremClosed : Z.initialValueTheorem
  finalValueTheoremClosed : Z.finalValueTheorem

def DiscreteZTransformClosed (Z : DiscreteZTransformPackage) : Prop :=
  Z.linearity ∧ Z.shiftProperty ∧ Z.convolutionProperty ∧
  Z.initialValueTheorem ∧ Z.finalValueTheorem

theorem discrete_z_transform_closed_from_evidence (Z : DiscreteZTransformPackage)
    (E : DiscreteZTransformEvidence Z) : DiscreteZTransformClosed Z := by
  exact And.intro E.linearityClosed
    (And.intro E.shiftPropertyClosed
      (And.intro E.convolutionPropertyClosed
        (And.intro E.initialValueTheoremClosed E.finalValueTheoremClosed)))

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse