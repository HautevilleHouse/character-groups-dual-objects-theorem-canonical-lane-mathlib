import canonicalLaneMathlib.AdmissibleClass
import CharacterGroupsDualObjectsTheoremCanonicalLaneLean.CharacterGroupsPackage

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure BohrCompactification (G : Type) [CommGroup G] [TopologicalSpace G] where
  compactDual : CompactGroup (CharacterGroup G)
  denseEmbedding : G → compactDual
  universalProperty : Prop

def BohrCompactificationClosed (B : BohrCompactification ℤ) : Prop := B.universalProperty

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
