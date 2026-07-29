import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure DualObject (G : Type) [CommGroup G] where
  dualGroup : CharacterGroup G
  dualPairing : G → dualGroup.charGroup → Circle
  nondegenerate : Prop

def DualObjectClosed (D : DualObject ℤ) : Prop := D.nondegenerate

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
