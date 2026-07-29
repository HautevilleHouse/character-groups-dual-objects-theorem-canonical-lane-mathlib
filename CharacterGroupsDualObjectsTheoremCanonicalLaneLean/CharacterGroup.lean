import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure CharacterGroup where
  G : Type u
  group : Group G
  topology : TopologicalSpace G
  continuousMul : ContinuousMul G
  compactlyGenerated : Prop

def continuousDual (G : CharacterGroup) : Type u := { χ : G.G → Circle | Continuous χ ∧ ∀ x y : G.G, χ (x * y) = χ x * χ y }

structure DualGroup (G : CharacterGroup) where
  carrier : Type u
  group : Group carrier
  topology : TopologicalSpace carrier
  continuousMul : ContinuousMul carrier
  pairing : G.G → carrier → Circle
  bilinear : Prop
  continuous : Prop
  nondegenerate : Prop

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse