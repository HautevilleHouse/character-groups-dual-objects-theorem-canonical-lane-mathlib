import CharacterGroupsDualObjectsCanonicalLaneLean.TheoremStatement
import CharacterGroupsDualObjectsCanonicalLaneLean.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CharacterGroupsDualObjectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CharacterGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  groupStructure : AddGroup carrier
  continuousGroupOps : ContinuousAdd carrier

structure CharacterGroupAdmittedObject where
  space : CharacterGroupSpace
  locallyCompactHausdorffAbelian : Prop
  dualGroupIsIsomorphicToOriginal : Prop
  conclusion : dualGroupIsIsomorphicToOriginal

structure CharacterGroupEndgameState where
  object : CharacterGroupAdmittedObject

def CharacterGroupWitnessClosed (O : CharacterGroupAdmittedObject) : Prop :=
  O.dualGroupIsIsomorphicToOriginal

end CharacterGroupsDualObjectsCanonicalLaneLean
end HautevilleHouse