import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsTheoremCanonicalLaneLean

structure CharacterGroup (G : Type) [CommGroup G] where
  charGroup : Set (G → Circle)
  continuousDual : Prop
  pontryaginDuality : Prop

def CharacterGroupClosed (C : CharacterGroup ℤ) : Prop := C.continuousDual ∧ C.pontryaginDuality

end CharacterGroupsDualObjectsTheoremCanonicalLaneLean
end HautevilleHouse
