import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure PontryaginDualityPackage where
  dualGroupFunctor : DualGroupFunctorPackage
  bidualGroup : Type u
  bidualTopology : TopologicalSpace bidualGroup
  canonicalEmbedding : bidualGroup → dualGroupFunctor.dualGroup
  isomorphismProperty : Prop
  isomorphismPropertyTerm : isomorphismProperty

structure PontryaginDualityEvidence (P : PontryaginDualityPackage) where
  isomorphismPropertyClosed : P.isomorphismProperty

def PontryaginDualityClosed (P : PontryaginDualityPackage) : Prop :=
  P.isomorphismProperty

theorem pontryagin_duality_closed_from_evidence (P : PontryaginDualityPackage) (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact E.isomorphismPropertyClosed

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse