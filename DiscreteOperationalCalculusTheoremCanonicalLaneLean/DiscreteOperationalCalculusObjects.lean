import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusTheoremCanonicalLaneLean

structure DiscreteSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscreteAdmittedObject where
  space : DiscreteSpace
  finiteSupportCondition : Prop
  discreteTopologyAdequate : Prop
  shiftInvariant : Prop
  convolutionModel : Type
  convolutionTopology : TopologicalSpace convolutionModel
  convolutionStructDefined : Prop
  conclusion : convolutionStructDefined

structure DiscreteEndgameState where
  object : DiscreteAdmittedObject

def DiscreteWitnessClosed (O : DiscreteAdmittedObject) : Prop :=
  O.convolutionStructDefined

end DiscreteOperationalCalculusTheoremCanonicalLaneLean
end HautevilleHouse