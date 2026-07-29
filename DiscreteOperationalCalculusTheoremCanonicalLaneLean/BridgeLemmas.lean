import DiscreteOperationalCalculusTheoremCanonicalLaneLean.DiscreteOperationalCalculusObjects

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

def bridgeClosed (A : DiscreteAdmittedObject) : Prop :=
  DiscreteWitnessClosed A

theorem bridge_from_admissible_class (A : DiscreteAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse