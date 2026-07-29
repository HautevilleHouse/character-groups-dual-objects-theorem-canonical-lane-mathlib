import canonicalLaneMathlib.AdmissibleClass
import CharacterGroupsDualObjectsTheoremCanonicalLaneLean.CharacterGroupsPackage

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure TannakaDuality (G : Type) [CommGroup G] where
  representationCategory : Type
  fiberFunctor : representationCategory → VectorSpace ℂ
  dualGroupReconstruction : CharacterGroup G

def TannakaDualityClosed (T : TannakaDuality ℤ) : Prop := T.dualGroupReconstruction.continuousDual

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
